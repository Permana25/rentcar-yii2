<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Transaksi */

$this->title = 'DETAIL TRANSAKSI ' ;
\yii\web\YiiAsset::register($this);
?>
<div class="transaksi-view">
        <h1>
            <?= Html::encode($this->title) ?>
            <p>
                    <?= Html::a('<i class="glyphicon glyphicon-circle-arrow-left"></i> Kembali', ['index'], ['class' => 'btn btn-warning btn-sm']) ?>
            </p>
        </h1>
    </div>
<div class="box box-primary">
    <div class="box-header">
        <div class="col-md-12" style="padding: 0;">
            <div class="box-body" style="overflow-x: auto;">
                    <?= DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                        'id_transaksi',
                        [
                            'attribute' => 'id_customer',
                            'label' => 'customer',
                            'value' => function ($model) {
                                return $model->customer->nama;
                            }
                        ],

                        [
                            'attribute' => 'id_mobil',
                            'label' => 'mobil',
                            'value' => function ($model) {
                                return $model->mobil->merk;
                            }
                        ],
                        [
                            'attribute' => 'tgl_pinjam',
                            'label' => 'Tanggal Pinjam',
                            'value' => function ($model) {
                              return tanggal_indo($model->tgl_pinjam);
                            }
                        ],
                        [
                            'attribute' => 'jam_pinjam',
                            'label' => 'Jam Pinjam',
                            'value' => function ($model){
                                return $model->jam_pinjam;
                            }
                        ],

                        [
                            'attribute' => 'tgl_kembali',
                            'label' => 'Tanggal Kembali',
                            'value' => function ($model) {
                              return tanggal_indo($model->tgl_kembali);
                            }
                        ],

                        [
                            'attribute' => 'jam_kembali',
                            'label' => 'Jam Kembali',
                            'value' => function ($model){
                                return $model->jam_kembali;
                            }
                        ],

                        [
                            'attribute' => 'harga',
                            'label' => 'Harga',
                            'value' => function ($model) {
                              return 'Rp. ' . ribuan($model->mobil->harga_sewa);
                            }
                        ],
                        // [
                        //     'attribute' => 'denda',
                        //     'label' => 'denda',
                        //     'value' => function ($model) {
                        //       return 'Rp.' . ribuan($model->denda);
                        //     }
                        // ],

                        [
                            'attribute' => 'tanggal',
                            'label' => 'Tanggal',
                            'value' => function ($model) {
                              return tanggal_indo($model->tanggal, true);
                            }
                        ],

                        [
                            'attribute' => 'status',
                            'format'    => 'raw',
                            'filter'    => array(1=>"Lunas", 2=>"Belum Lunas"),
                            'value'     => function ($model)
                            {
                                return $model->status == 1 ? "<span class='label label-success'>Lunas</span>" : "<span class='label label-warning'>Belum Lunas</span>";
                            }
                        ],

                        [
                            'attribute' => 'total',
                            'label' => 'Total',
                            'value' => function ($model) {
                              return 'Rp.' . ribuan($model->total);
                            }
                        ],

                        [
                            'attribute' => 'foto mobil',
                            'format'    => 'raw',
                            'value'     => function ($model)
                            {
                                $foto =$model->mobil->foto;
                                return "<img src='upload/$foto' width='150'>"; 
                            }
                        ],

                        [
                            'attribute' => 'foto customer',
                            'format'    => 'raw',
                            'value'     => function ($model)
                            {
                                $foto =$model->customer->foto;
                                return "<img src='upload/$foto' width='150'>"; 
                            }
                        ],
                        'catatan',
                    ],
                ]) ?>
            </div>
        </div>
    </div>
</div>
