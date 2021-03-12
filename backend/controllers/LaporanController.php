<?php

namespace backend\controllers;
use Yii;

class LaporanController extends \yii\web\Controller
{
        public function actionIndex()
    {
        $tanggal_awal   = Yii::$app->request->post('tanggal_awal');
        $tanggal_akhir  = Yii::$app->request->post('tanggal_akhir');

        return $this->render('index', [
            'tanggal_awal'  => $tanggal_awal,
            'tanggal_akhir' => $tanggal_akhir
        ]);
    }

}
