<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;
// use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\MobilSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
if (Yii::$app->user->isGuest) { 
    header("Location: index.php");
    exit;
 }
$this->title = 'Mobil';
?>
<div class="mobil-index">
    <h1><?= Html::encode($this->title) ?></h1>
        <ul class="breadcrumb">
        <li><a href="index.php">Dashboard</a></li>
        <li class="active"><?= $this->title ?></li>
    </ul>
        <p>
            <?= Html::button('<i class="glyphicon glyphicon-plus"></i> Tambah Data', ['value' => Url::to(['create']), 'title' => 'Data Mobil', 'class' => 'showModalButton btn btn-primary']); ?>
        </p>
    
    <div class="box box-primary">
        <div class="box-header">
            <div class="col-md-12" style="padding: 0;">
                <div class="box-body" style="overflow-x: auto;">
                    <table class="table datatables">
                        <thead>
                            <tr>
                                <th style="white-space: nowrap;">No</th>
                                <th style="white-space: nowrap;">Merk </th>
                                <th style="white-space: nowrap;">Nomer Plat</th>
                                <th style="white-space: nowrap;">Warna</th>
                                <th style="white-space: nowrap;">Tahun</th>
                                <th style="white-space: nowrap;">Harga Sewa</th>
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
                                    <td style="text-transform: uppercase;"><?= $value->merk ?></td>
                                    <td style="text-transform: uppercase;"><?= $value->no_plat ?></td>
                                    <td style="text-transform: uppercase;"><?= $value->warna ?></td>
                                    <td style="text-transform: uppercase;"><?= $value->tahun ?></td>
                                    <td style="text-transform: uppercase;"><?= 'Rp. ' . ribuan ($value->harga_sewa) ?></td>
                                    <td>
                                        <?php if ($value->status == 1) {
                                            echo '<label class="label label-success">Pesan</label>';
                                        } elseif ($value->status == 2) {
                                            echo '<label class="label label-warning">Sudah Dipesan</label>';
                                            }
                                        ?>
                                    </td>
                                    <td>
                                     <?= Html::a('<button class = "btn btn-sm btn-info"><span class="glyphicon glyphicon-eye-open"></span></button>', ['view', 'id' => $value->id_mobil], [
                                            'title' => Yii::t('app', 'Lihat Detail'),
                                        ]); ?>
                                        <?= Html::a(
                                            '<span class="glyphicon glyphicon-edit"></span>',
                                            ['update', 'id' => $value->id_mobil], ['class' => 'btn btn-primary btn-sm']
                                            
                                        ); ?>
                                       <?= Html::a('<button class = "btn btn-sm btn-danger"><span class="glyphicon glyphicon-trash"></span></button>', ['delete', 'id' => $value->id_mobil], [
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