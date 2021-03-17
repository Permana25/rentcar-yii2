<?php

use backend\models\Customer;
use backend\models\Transaksi;
use backend\models\Mobil;
use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\TransaksiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Laporan Transaksi';
?>
<div class="laporan transaksi-index">
<h1><?= Html::encode($this->title) ?></h1>
	<div class="box box-primary">
		<div class="box-header">
    	   <div class="row">
                <div class="col-lg-12">
                    <div class="card card-outline card-danger">
                        <div class="card-body">
                    <?= Html::beginForm(['index', array('class' => 'form-inline')]) ?>

                    <table border="0" width="100%">
                        <tr>
                            <td width="10%">
                                <div class="form-group">Dari Tanggal</div>
                            </td>
                            <td align="center" width="5%">
                                <div class="form-group">:</div>
                            </td>
                            <td width="30%">
                                <div class="form-group">
                                    <input type="date" name="tanggal_awal" value="<?= (!empty($tanggal_awal)) ? $tanggal_awal : date('Y-m-d', strtotime('-30 days', strtotime(date('Y-m-d')))) ?>" class="form-control" required>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td width="10%">
                                <div class="form-group">Sampai Tanggal</div>
                            </td>
                            <td align="center" width="5%">
                                <div class="form-group">:</div>
                            </td>
                            <td width="30%">
                                <div class="form-group">
                                    <input type="date" name="tanggal_akhir" value="<?= (!empty($tanggal_akhir)) ? $tanggal_akhir : date('Y-m-d') ?>" class="form-control" required>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>
                                <div class="form-group">
                                    <?= Html::submitButton('Submit', ['class' => 'btn btn-success']) ?>
                                    <?php
                                    if ($tanggal_awal != 0 && $tanggal_akhir != 0) {
                                        # code...
                                    ?>
                                        <!-- <button class="btn btn-primary" onclick="print()">Print</button> -->
                                        <?= Html::a('<span class="glyphicon glyphicon-print">Print</span>', ['print-transaksi', 'id' => $model->customer], ['class' => 'btn btn-primary', 'target' => '_blank']) ;
                                        ?> 
                                    <?php
                                    }
                                    ?>
                                </div>
                            </td>   
                        </tr>
                    </table>

                    <?= Html::endForm() ?>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

    <?php
    if (!empty($tanggal_awal) || !empty($tanggal_akhir)) {
    ?>
    <div class="laporan transaksi-index">
    <div class="box box-primary">
        <div class="box-header">
        <div class="row">
            <div class="col-lg-12">
                <div class="card card-outline card-danger">
                    <div class="card-header">
                        <h3 class="card-title"><?= $this->title ?></h3>
                    </div>
                    <div class="card-body"  style="overflow-x: auto;">
                        <p style="font-family: 'Times New Roman'">
                        <h4>Periode : <?= ($tanggal_awal != '') ? date('d/m/Y', strtotime($tanggal_awal)) : '-'; ?> Sampai <?= ($tanggal_akhir != '') ? date('d/m/Y', strtotime($tanggal_akhir)) : '-'; ?></h4>
                        </p>

                        <table class="table datatables">
                        <thead>
                            <tr>
                                <th style="white-space: nowrap;">No</th>
                                <th style="white-space: nowrap;">Customer</th>
                                <th style="white-space: nowrap;">Merk</th>
                                <th style="white-space: nowrap;">Tanggal Pinjam</th>
                                <th style="white-space: nowrap;">Tanggal Kembali</th>
                                <th style="white-space: nowrap;">Harga</th>
                                <th style="white-space: nowrap;">Denda</th>
                                <th style="white-space: nowrap;">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $i = 1;
                            $grandtotal=0;
                            $model = Transaksi::find()->where("tanggal BETWEEN '$tanggal_awal' AND '$tanggal_akhir'")->joinWith('customer')->joinWith('mobil')->all();
                            foreach ($model as $key => $value) {
                                $grandtotal += $value->total;
                            ?>
                                <tr>
                                    <td><?= $i++ ?></td>
                                    <td style="text-transform: uppercase;"><?= $value->customer->nama ?></td>
                                    <td style="text-transform: uppercase;"><?= $value->mobil->merk ?></td>
                                    <td style="text-transform: uppercase;"><?= tanggal_indo($value->tgl_pinjam,true) ?></td>
                                    <td style="text-transform: uppercase;"><?= tanggal_indo ($value->tgl_kembali,true) ?></td>
                                    <td style="text-transform: uppercase;"><?= 'Rp.' . ribuan($value->harga); ?></td>
                                    <td style="text-transform: uppercase;"><?= 'Rp.' . ribuan($value->denda); ?></td>
                                    <td style="text-transform: uppercase;"><?= 'Rp.' . ribuan($value->total); ?></td>
                                </tr>
                                        <?php } ?>
                                        <tr>
                                            <td colspan="4"><b>GRANDTOTAL</b></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>
                                             <p class="float-right">Rp. <?= ribuan($grandtotal) ?></p>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
