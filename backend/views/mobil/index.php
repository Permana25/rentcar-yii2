<?php

use yii\helpers\Html;
//use yii\grid\GridView;
use yii\helpers\Url;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\MobilSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
if (Yii::$app->user->isGuest) { 
    header("Location: index.php");
    exit;
 }
$this->title = 'Mobil';
?>
<div class="mobil-index panel panel-info">
<div class="panel-heading">
        <h4>
            <?= Html::encode($this->title) ?>
            <span class="pull-right">
            <?= Html::button('Tambah Data Mobil', ['value' => Url::to(['create']), 'title' => 'Data Mobil', 'class' => 'showModalButton btn btn-success']); ?>
            </span>
        </h4>
    </div>
    <div class="panel-body">
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'id_mobil',
            'merk',
            'no_plat',
            'warna',
            [
                'attribute' => 'foto',
                'format'   => 'raw',
                'label'    => 'Foto',
                'value'    => function ($model)
                {
                    return "<img src='upload/$model->foto' width='150'>";
                
                }

            ],

            'tahun',
            [
                'attribute' => 'status',
                'format'    => 'raw',
                'filter'    => array(1=>"Pesan", 2=>"Sudah dipesan"),
                'value'     => function ($model)
                {
                    return $model->status == 1 ? "<span class='label label-success'>Pesan</span>" : "<span class='label label-warning'>Sudah dipesan</span>";
                }
            ],

           
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
            'heading' => 'Data Mobil',
        ],
        'persistResize' => false,
        'toggleDataOptions' => ['minCount' => 100],
        'exportConfig' => [
            GridView::EXCEL =>  [
                'filename' => 'Data_Mobil',
                'showPageSummary' => true,
            ]

        ],
        //'itemLabelSingle' => 'book',
        //'itemLabelPlural' => 'books'
    ]); ?>
    </div>
</div>
