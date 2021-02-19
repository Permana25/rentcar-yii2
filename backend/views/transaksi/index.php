<?php

use yii\helpers\Html;
use yii\helpers\Url;
//use yii\grid\GridView;
use kartik\grid\Gridview;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\TransaksiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
if (Yii::$app->user->isGuest) { 
    header("Location: index.php");
    exit;
 }
$this->title = 'Transaksi';
?>
<div class="transaksi-index panel panel-info">
<div class="panel-heading">
        <h4>
            <?= Html::encode($this->title) ?>
            <span class="pull-right">
            <?= Html::button('Tambah Data Transaksi', ['value' => Url::to(['create']), 'title' => 'Data Transaksi', 'class' => 'showModalButton btn btn-success']); ?>
            </span>
        </h4>
    </div>
    <div class="panel-body"> 
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute' => 'Aksi',
                'format' => 'raw',
                'label' => 'Aksi',
                'value' => function ($model){
                    return Html::a('<span class="glyphicon glyphicon-print"></span>', ['print-transaksi', 'id' => $model->id_transaksi], ['class' => 'btn btn-primary', 'target' => '_blank']) ;
                }
            ],
            [
                'attribute' => 'id_customer',
                'label' => 'Customer',
                'value' => function ($model) {
                    return $model->customer->nama;
                }
            ],
            [
                'attribute' => 'id_mobil',
                'label' => 'Mobil',
                'value' => function ($model) {
                    return $model->mobil->merk;
                }
            ],
            [
                'attribute' => 'tgl_pinjam',
                'label' => 'Tanggal Pinjam',
                'value' => function ($model) {
                  return tanggal_indo(date('Y-m-d', strtotime($model->tgl_pinjam)), true).' '.date('H:i', strtotime($model->tgl_pinjam));
                }
            ],
            // [
                // 'attribute' => 'tgl_kembali',
                // 'label' => 'Tanggal Kembali',
                // 'value' => function ($model) {
                //    return tanggal_indo(date('Y-m-d', strtotime($model->tgl_kembali)), true).' '.date('H:i', strtotime($model->tgl_kembali)));
                // }
            // ],
            [
                'attribute' => 'status',
                'format'    => 'raw',
                'filter'    => array(1=>"Lunas", 2=>"Belum Lunas"),
                'value'     => function ($model)
                {
                    return $model->status == 1 ? "<span class='label label-success'>Lunas</span>" : "<span class='label label-warning'>Belum Lunas</span>";
                }
            ],

            ['class' => 'yii\grid\ActionColumn'],
        ],
        'containerOptions' => ['style' => 'overflow: auto'], // only set when $responsive = false
        'headerRowOptions' => ['class' => 'kartik-sheet-style'],
        'filterRowOptions' => ['class' => 'kartik-sheet-style'],
        'toolbar' =>  [
            
            '{export}',
            '{toggleData}',
        ],
        'toggleDataContainer' => ['class' => 'btn-group mr-2'],
        // set export properties
        'export' => [
            'fontAwesome' => true
        ],
        'panel' => [
            'type' => GridView::TYPE_PRIMARY,
            'heading' => 'Data Transaksi',
        ],
        'persistResize' => false,
        'toggleDataOptions' => ['minCount' => 100],
        'exportConfig' => [
            GridView::PDF =>  [
                'filename' => 'Data_Tansaksi',
                'showPageSummary' => true,
            ]

        ],
    ]); ?>
    </div>
</div>
