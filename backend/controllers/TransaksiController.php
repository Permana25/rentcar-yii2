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
                    'delete' => ['POST'],
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
        $searchModel = new TransaksiSearch();
        // $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        $query = Transaksi::find();

        $pages = new Pagination([
            'totalCount' => $query->count(),
            'pageSize' => 5,
        ]);

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => $pages,
        ]);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
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
        if ($model->load(Yii::$app->request->post()))
         { 
           $mobil= Mobil::find()->where(['id_mobil'=>$model->id_mobil])->one();  
           $mobil->status=2;
           $mobil->save(false);
           $model->save();
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
    public function actionPrintTransaksi($id){
        $model = $this->findModel($id);
        return $this->renderPartial('cetak', [
            
            'model' => $model,
        ]);
    }
}
