<?php

use yii\helpers\Html;
//use yii\grid\GridView;
use yii\helpers\Url;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\CustomerSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
if (Yii::$app->user->isGuest) { 
    header("Location: index.php");
    exit;
 }
$this->title = 'Customer';
?>
<div class="admin-index">
    <h1><?= Html::encode($this->title) ?></h1>
        <ul class="breadcrumb">
        <li><a href="index.php">Dashboard</a></li>
        <li class="active"><?= $this->title ?></li>
    </ul>
        <p>
            <?= Html::button('<i class="glyphicon glyphicon-plus"></i> Tambah Data', ['value' => Url::to(['create']), 'title' => 'Data Customer', 'class' => 'showModalButton btn btn-primary']); ?>
        </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'id_customer',
            'nama',
            'alamat',
            [
                'attribute' => 'jenis_kelamin',
                'format'    => 'raw',
                'filter'    => array(1=>"Laki-Laki", 2=>"Perempuan"),
                'value'     => function ($model)
                {
                    return $model->jenis_kelamin == 1 ? "<span class='label label-success'>Laki-Laki</span>" : "<span class='label label-warning'>Perempuan</span>";
                }
            ],
            'no_telp',
            'no_ktp',
            // [
                // 'attribute' => 'foto',
                // 'format'   => 'raw',
                // 'label'    => 'foto',
                // 'value'    => function ($model)
                // {
                    // return "<img src='upload/$model->foto' width='150'>";
                
                // }

            // ],

            ['class' => 'yii\grid\ActionColumn'],
        ],
        'containerOptions' => ['style' => 'overflow: auto'], // only set when $responsive = false
        'headerRowOptions' => ['class' => 'kartik-sheet-style'],
        'filterRowOptions' => ['class' => 'kartik-sheet-style'],
        //'pjax' => true, // pjax is set to always true for this demo
        // set your toolbar
        'toolbar' =>  [
            
            '{export}',
            '{toggleData}',
        ],
        'toggleDataContainer' => ['class' => 'btn-group mr-2'],
        // set export properties
        'export' => [
            'fontAwesome' => true
        ],
        // parameters from the demo form
        //'bordered' => $bordered,
        //'striped' => $striped,
        //'condensed' => $condensed,
        //'responsive' => $responsive,
        //'hover' => $hover,
        //'showPageSummary' => $pageSummary,
        'panel' => [
            'type' => GridView::TYPE_PRIMARY,
            'heading' => 'Data Customer',
        ],
        'persistResize' => false,
        'toggleDataOptions' => ['minCount' => 100],
        'exportConfig' => [
            GridView::EXCEL =>  [
                'filename' => 'Data_Customer',
                'showPageSummary' => true,
            ]

        ],
        //'itemLabelSingle' => 'book',
        //'itemLabelPlural' => 'books'
    ]); ?>
</div>   

