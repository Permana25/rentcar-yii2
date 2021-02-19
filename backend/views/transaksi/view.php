<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Transaksi */

$this->title = 'DETAIL TRANSAKSI ' ;
\yii\web\YiiAsset::register($this);
?>
<div class="transaksi-view">
<div class="panel-heading">
        <h4>
            <?= Html::encode($this->title) ?>
            <span class="pull-right">
                    <?= Html::a('Lihat Semua', ['index'], ['class' => 'btn btn-success btn-sm']) ?>
                    <?= Html::a('Ubah', ['update', 'id' => $model->id_transaksi], ['class' => 'btn btn-primary btn-sm']) ?>
                    <?= Html::a('Hapus', ['delete', 'id' => $model->id_transaksi], [
                    'class' => 'btn btn-danger btn-sm',
                    'data' => [
                        'confirm' => 'Are you sure you want to delete this item?',
                        'method' => 'post',
                    ],
                ]) ?>
            </span>
        </h4>
    </div>
    <div class="panel-body">
        <?= DetailView::widget([
            'model' => $model,
            'attributes' => [
                //'id_transaksi',
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
                      return tanggal_indo(date('Y-m-d', strtotime($model->tgl_pinjam)), true).' '.date('H:i ', strtotime($model->tgl_pinjam));
                    }
                ],
                [
                    'attribute' => 'tgl_kembali',
                    'label' => 'Tanggal Kembali',
                    'value' => function ($model) {
                      return tanggal_indo(date('Y-m-d', strtotime($model->tgl_kembali)), true).' '.date('H:i ', strtotime($model->tgl_kembali));
                    }
                ],
                [
                    'attribute' => 'harga',
                    'label' => 'Harga',
                    'value' => function ($model) {
                      return ribuan($model->harga);
                    }
                ],
                'denda',
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
            ],
        ]) ?>
    </div>
</div>
