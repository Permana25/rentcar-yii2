<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;
// use kartik\grid\GridView;

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
    <div class="box box-primary">
        <div class="box-header">
            <div class="col-md-12" style="padding: 0;">
                <div class="box-body" style="overflow-x: auto;">
                    <table class="table datatables">
                        <thead>
                            <tr>
                                <th style="white-space: nowrap;">No</th>
                                <th style="white-space: nowrap;">Nama </th>
                                <th style="white-space: nowrap;">Alamat</th>
                                <th style="white-space: nowrap;">No Telp</th>
                                <th style="white-space: nowrap;">No KTP</th>
                                <th style="white-space: nowrap;">Jenis Kelamin</th>
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
                                    <td style="text-transform: uppercase;"><?= $value->nama ?></td>
                                    <td style="text-transform: uppercase;"><?= $value->alamat ?></td>
                                    <td style="text-transform: uppercase;"><?= $value->no_telp ?></td>
                                    <td style="text-transform: uppercase;"><?= $value->no_ktp ?></td>
                                    <td>
                                        <?= ($value->jenis_kelamin == 1) ? 'Laki-laki' : 'Perempuan' ?>
                                    </td>
                                    <td>
                                     <?= Html::a('<button class = "btn btn-sm btn-info"><span class="glyphicon glyphicon-eye-open"></span></button>', ['view', 'id' => $value->id_customer], [
                                            'title' => Yii::t('app', 'Lihat Detail'),
                                        ]); ?>
                                        <?= Html::a(
                                            '<span class="glyphicon glyphicon-edit"></span>',
                                            ['update', 'id' => $value->id_customer], ['class' => 'btn btn-primary btn-sm']
                                            
                                        ); ?>
                                       <?= Html::a('<button class = "btn btn-sm btn-danger"><span class="glyphicon glyphicon-trash"></span></button>', ['delete', 'id' => $value->id_customer], [
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

