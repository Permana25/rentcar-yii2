<?php

use yii\helpers\Html;
use backend\models\Customer;
use backend\models\Mobil;
use backend\models\Transaksi;

?>

<style>
    .table {
        /border: solid 2px;/
        border-collapse: collapse;
        /text-transform: uppercase;/
        /* line-height: 1; */
    }

    /*.td1 {
        margin-right: -5px;
    }*/

    .table td {
        /padding-left: 11px;/
        padding-right: 11px;
    }
</style>
<table class="table" width="15%">
    <thead>
        <tr>
            <td colspan="3" align="center" style="padding-bottom: 10px;"><b style="font-size: 11px;">GSS RENTAL MOBIL<br> </b><p><img src="upload/logo1.png" height="50px" width="100x"></p></td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                <div style="font-size: 11px;">No. Transaksi</div>
            </td>
            <td colspan="2">
                <p style="font-size: 11px;">: <?= ($model->id_transaksi != '') ? $model->id_transaksi : '< no invoice >'; ?></p>
            </td>
        </tr>
        <?php
        if ($model->id_customer > 0) {
        ?>
            <tr>
                <td>
                    <div style="font-size: 11px;">Nama </div>
                </td>
                <td colspan="2">
                    <p style="font-size: 11px;">: <?= (!empty($model->customer->nama)) ? $model->customer->nama : 'Customer tidak ada/ sudah dihapus' ?></p>
                </td>
            </tr>
        <?php } ?>
        <tr>
            <td>
                <p style="font-size: 11px;">Tanggal Pinjam</p>
            </td>
            <td colspan="2">
                <p style="font-size: 11px;">: <?= tanggal_indo($model->tgl_pinjam,true) ?></p>
            </td>
        </tr>
        <tr>
            <td>
                <p style="font-size: 11px;">Tanggal Kembali</p>
            </td>
            <td colspan="2">
                <p style="font-size: 11px;">: <?= tanggal_indo($model->tgl_kembali,true) ?></p>
            </td>
        </tr>
        <tr>
            <td>
                <p style="font-size: 11px;">Jam Pinjam</p>
            </td>
            <td colspan="2">
                <p style="font-size: 11px;">: <?= ($model->jam_pinjam) ?></p>
            </td>
        </tr>
        <tr>
            <td>
                <p style="font-size: 11px;">Jam Kembali</p>
            </td>
            <td colspan="2">
                <p style="font-size: 11px;">: <?= ($model->jam_kembali) ?></p>
            </td>
        </tr>
        <tr>
            <td>
                <p style="font-size: 11px; ">Harga</p>
            </td>
            <td colspan="2">
                <p style="font-size: 11px;">: <?= 'Rp.' . ribuan($model->harga) ?></p>
            </td>
        </tr>
        <tr>
            <td>
                <p style="font-size: 11px;">Denda</p>
            </td>
            <td colspan="2">
                <p style="font-size: 11px;">: <?= 'Rp.' . ribuan($model->denda )?></p>
            </td>
        </tr>
<!--         <tr>
            <td>
                <p style="font-size: 11px;">Tanggal</p>
            </td>
            <td colspan="2">
                <p style="font-size: 11px;">: <?= tanggal_indo($model->tanggal,true) ?></p>
            </td>
        </tr>  -->
        <tr>
            <td>
                <p style="font-size: 11px;">Total</p>
            </td>
            <td colspan="2">
                <p style="font-size: 11px;">: <?= 'Rp.' . ribuan($model->total )?></p>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="padding-bottom: 12px;"></td>
        </tr>
    </tbody>
    <tfoot>
        <tr style="border-top: 1px solid black;">
            <td align="center" colspan="3" style="padding-top: 12px;">
                <p style="font-size: 11px;">.:TERIMA KASIH:.<br>Sudah merental mobil <br>di GSS RENTAL <br> *</p>
            </td>
        </tr>
    </tfoot>
</table>


<script>
    window.print();
    // console.log(link);
    // setTimeout(window.location = link, 500);
</script>