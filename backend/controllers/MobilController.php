<?php

namespace backend\controllers;

use Yii;
use backend\models\Mobil;
use backend\models\MobilSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use yii\data\ActiveDataProvider;
use yii\data\Pagination;
/**
 * MobilController implements the CRUD actions for Mobil model.
 */
class MobilController extends Controller
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
                    'delete' => ['POST','GET'],
                ],
            ],
        ];
    }

    /**
     * Lists all Mobil models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new MobilSearch();
        // $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        $query = Mobil::find();

        $pages = new Pagination([
            'totalCount' => $query->count(),
            'pageSize' => 5,
        ]);

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => $pages,
        ]);

            $model = Mobil::find()->all();
        return $this->render('index', [
            // 'searchModel' => $searchModel,
            // 'dataProvider' => $dataProvider,
            'model' => $model,
        ]);
    }

    /**
     * Displays a single Mobil model.
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
     * Creates a new Mobil model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Mobil();

        if ($model->load(Yii::$app->request->post())) {
            $model->foto=UploadedFile::getInstance($model,'foto');
            $model->save();
            Yii::$app->session->setFlash('success', 'Disimpan');
            return $this->redirect(['view', 'id' => $model->id_mobil]);
        }

        return $this->renderAjax('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Mobil model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post())) { 
            $model->foto=UploadedFile::getInstance($model,'foto');
            $model->save();
            Yii::$app->session->setFlash('success', 'Disimpan');
            return $this->redirect(['view', 'id' => $model->id_mobil]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Mobil model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Mobil model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Mobil the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Mobil::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
