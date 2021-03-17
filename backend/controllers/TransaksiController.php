<?php

namespace backend\controllers;

use Yii;
use backend\models\Transaksi;
use backend\models\TransaksiSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\helpers\ArrayHelper;
use backend\models\Mobil;
use backend\models\Customer;
use yii\data\ActiveDataProvider;
use yii\data\Pagination;
use mPDF;
use Mpdf\Mpdf as MpdfMpdf;
/**
 * TransaksiController implements the CRUD actions for Transaksi model.
 */
class TransaksiController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST', 'GET'],
                ],
            ],
        ];
    }

    /**
     * Lists all Transaksi models.
     * @return mixed
     */
    public function actionIndex()
    {
        $model = Transaksi::find()->joinWith('customer')->joinWith('mobil')->all();

        return $this->render('index', [
            'model' => $model,
        ]);
    }

    /**
     * Displays a single Transaksi model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Transaksi model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Transaksi();
        $data_mobil = ArrayHelper::map(
            Mobil::find()->where(['status'=>1])->all(),
            'id_mobil','merk'
        );
        $customer=new Customer();
        $data_customer = ArrayHelper::map(
            Customer::find()->all(),
            'id_customer',function($customer){
                return $customer['nama'];
            }
        );
        $model->denda=0;
        if ($model->load(Yii::$app->request->post()))
         { 

            
           $mobil= Mobil::find()->where(['id_mobil'=>$model->id_mobil])->one();  
           $mobil->status=2;
           $model->total=$model->harga+$model->denda;
           $mobil->save(false);
           $model->save();
            Yii::$app->session->setFlash('success', 'Disimpan');
           return $this->redirect(['view', 'id' => $model->id_transaksi]);
        }

        return $this->renderAjax('create', [
            'model' => $model,
            'data_mobil' => $data_mobil,
            'data_customer' => $data_customer
        ]);
    }

    /**
     * Updates an existing Transaksi model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $data_mobil = ArrayHelper::map(
            Mobil::find()->all(),
            'id_mobil','merk'
        );
        $customer=new Customer();
        $data_customer = ArrayHelper::map(
            Customer::find()->all(),
            'id_customer',function($customer){
                return $customer['nama'];
            }
        );
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            Yii::$app->session->setFlash('success', 'Disimpan');
            return $this->redirect(['view', 'id' => $model->id_transaksi]);
        }

        return $this->render('update', [
            'model' => $model,
            'data_mobil' => $data_mobil,
            'data_customer' => $data_customer
        ]);
    }

    /**
     * Deletes an existing Transaksi model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
       $model = $this->findModel($id);
       $mobil= Mobil::find()->where(['id_mobil'=>$model->id_mobil])->one();  
       $mobil->status=1; 
       $mobil->save(false);
       $model->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Transaksi model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Transaksi the loaded model
     * 
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Transaksi::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
    public function actionPrintTransaksi($id)
    {
        $model = $this->findModel($id);
        return $this->renderPartial('cetak', [
            
            'model' => $model,
        ]);
    }
    //pdf
    public function actionExportPdf()
    {
        $searchModel = new TransaksiSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $html = $this->renderPartial('data_transaksi',['dataProvider'=>$dataProvider]);
        $mpdf=new \Mpdf\Mpdf();
        $mpdf->SetDisplayMode('fullpage');
        $mpdf->list_indent_first_level = 0;  // 1 or 0 - whether to indent the first level of a list
        $mpdf->WriteHTML($html);
        $mpdf->Output();
        exit;
    }
   
    //excel2
     public function actionExportExcel2()
    {
        $searchModel = new TransaksiSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        
        // Initalize the TBS instance
        $OpenTBS = new \hscstudio\export\OpenTBS; // new instance of TBS
        // Change with Your template kaka
        $template = Yii::getAlias('@hscstudio/export').'/templates/opentbs/dataTransaksi.xlsx';
        $OpenTBS->LoadTemplate($template); // Also merge some [onload] automatic fields (depends of the type of document).
        //$OpenTBS->VarRef['modelName']= "Mahasiswa";               
        $data = [];
        $no=1;
        foreach($dataProvider->getModels() as $tra){
            $data[] = [
                'no'=>$no++,
                'nama'=>$tra->customer->nama,
                'mobil'=>$tra->mobil->merk,
                'harga'=>$tra->harga,
                'tanggal'=>$tra->tanggal,
                'status'=>$tra->status,
            ];
        }
        
        $OpenTBS->MergeBlock('data', $data);
        // Output the result as a file on the server. You can change output file
        $OpenTBS->Show(OPENTBS_DOWNLOAD, 'data_transaksi.xlsx'); // Also merges all [onshow] automatic fields.          
        exit;
    }
      public function actionPrint($id)
    {
        $model = $this->findModel($id);
        return $this->renderPartial('print', [
            
            'model' => $model,
        ]);
    }
}
