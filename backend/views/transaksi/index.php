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
<div class="transaksi-index">
    <h1><?= Html::encode($this->title) ?></h1>
        <ul class="breadcrumb">
        <li><a href="index.php">Dashboard</a></li>
        <li class="active"><?= $this->title ?></li>
    </ul>
        <p>
            <?= Html::button('<i class="glyphicon glyphicon-plus"></i> Tambah Data', ['value' => Url::to(['create']), 'title' => 'Data Transaksi', 'class' => 'showModalButton btn btn-primary']); ?>
            <?= Html::a('<i class="fas fa-file-excel"></i> EXCEL', ['export-excel2'], ['class'=>'btn btn-success']); ?>
            <?= Html::a('<i class="fa fa-file-pdf-o"></i> PDF', ['export-pdf'], ['class'=>'btn btn-danger']); ?>  
        </p>
<div class="box box-primary">
        <div class="box-header">
            <div class="col-md-12" style="padding: 0;">
                <div class="box-body" style="overflow-x: auto;">
                    <table class="table datatables">
                        <thead>
                            <tr>
                                <th style="white-space: nowrap;">No</th>
                                <th style="white-space: nowrap;">Invoice</th>
                                <th style="white-space: nowrap;">Customer</th>
                                <th style="white-space: nowrap;">Merk</th>
                                <th style="white-space: nowrap;">Tanggal Pinjam</th>
                                <th style="white-space: nowrap;">Tanggal Kembali</th>
                                <th style="white-space: nowrap;">Status</th>
                                <th style="white-space: nowrap;">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $i = 1;
                            foreach ($model as $key => $value) {
                            ?>
                                <tr>
                                    <td><?= $i++ ?></td>
                                    <td>
                                        <?= Html::a('<span class="glyphicon glyphicon-print"></span>', ['print-transaksi', 'id' => $value->id_transaksi], ['class' => 'btn btn-primary', 'target' => '_blank']) ;
                                        ?>
                                    </td>
                                    <td style="text-transform: uppercase;"><?= $value->customer->nama ?></td>
                                    <td style="text-transform: uppercase;"><?= $value->mobil->merk ?></td>
                                    <td style="text-transform: uppercase;"><?= tanggal_indo($value->tgl_pinjam,true) ?></td>
                                    <td style="text-transform: uppercase;"><?= tanggal_indo ($value->tgl_kembali,true) ?></td>
                                    <td>
                                        <?php if ($value->status == 1) {
                                            echo '<label class="label label-success">Lunas</label>';
                                        } elseif ($value->status == 2) {
                                            echo '<label class="label label-warning">Belum Lunas</label>';
                                            }
                                        ?>
                                    </td>
                                    <td>
                                     <?= Html::a('<button class = "btn btn-sm btn-info"><span class="glyphicon glyphicon-eye-open"></span></button>', ['view', 'id' => $value->id_transaksi], [
                                            'title' => Yii::t('app', 'Lihat Detail'),
                                        ]); ?>
                                        <?= Html::a(
                                            '<span class="glyphicon glyphicon-edit"></span>',
                                            ['update', 'id' => $value->id_transaksi], ['class' => 'btn btn-primary  btn-sm']
                                            
                                        ); ?>
                                        <?= Html::a('<button class = "btn btn-sm btn-danger"><span class="glyphicon glyphicon-trash"></span></button>', ['delete', 'id' => $value->id_transaksi], [
                                            'title' => Yii::t('app', 'Hapus data'),
                                            'class' => 'tombol-hapus'
                                        ]); ?>
                                    </td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>    
</div>
