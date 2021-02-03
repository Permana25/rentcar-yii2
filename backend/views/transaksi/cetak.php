<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="css/laporan2.css"/>
<title>Laporan Transaksi</title></head>
<body>
<div class="box" width="100%">
<div style="text-align:center; ">
  <img src="upload/logo1.png" height="100px" width="200px"/><br/>
    <hr  width="100%"/>
        <img src="upload/<?= $model->customer->foto ?>"height="200" width="300">
    <hr  width="100%"/>
</div>
<table align="center" id="transaksi" border='1'width="100%">
    <thead>       
        <tr>
            <th colspan="4" class="label1"> IDENTITAS CUSTOMER </th>
        </tr>
        <tr>
            <th class="th_samping_gambar"> Nama </th>
            <td>  <?= $model->customer->nama ?></td>
        </tr>
        <tr>
            <th class="th_samping_gambar"> Alamat </th>
            <td>  <?= $model->customer->alamat ?></td>
        </tr>
        <tr>
            <th class="th_samping_gambar"> Jenis Kelamin </th>
            <td>  <?= ($model->customer->jenis_kelamin == 1) ? 'Laki-Laki' : 'Perempuan' ?></td>
        </tr>
        <tr>
            <th class="th_samping_gambar"> No Telp </th>
            <td>  <?= $model->customer->no_telp ?></td>
        </tr>
        <tr>
            <th class="th_samping_gambar"> No KTP </th>
            <td>  <?= $model->customer->no_ktp ?></td>
        </tr>
        <tr>
</table>
<hr  width="100%"/>
<table align="center" id="transaksi" border='1' width="100%">
        <th colspan="4" class="label1"> DATA TRANSAKSI </th>
        <tr>
            <td colspan="4" class="">
            <table align="center" id="transaksi" border='1'>
                    <thead>
                        <th> Nama Mobil </th>
                        <th> Tanggal Pinjam </th>
                        <th> Tanggal Kembali </th>
                        <th> Harga </th>
                        <th> Status </th>
                    </thead>
                    <tbody>
                            <tr>
                                <td><?= $model->mobil->merk ?></td>
                                <td><?= tanggal_indo($model->tgl_pinjam, true) ?></td>
                                <td><?= tanggal_indo($model->tgl_kembali,true) ?></td>
                                <td><?= ribuan($model->harga) ?></td>
                                <td><?= ($model->status == 1) ? 'Lunas' : 'Belum Lunas' ?></td>
                            </tr>
                  </tbody>
            </table>
        </tr>
    </thead>
</table>
<div class="tandatangan" >
<br/>
    <b>CEO Rental GSS</b><br/>
        <br/><br/><br/><br/><br/><hr/>
            .....  
</div>
<div class="tandatangan2">
    <br/>
            <?= tanggal_indo($model->tanggal,true) ?><br/><br/><br/><br/>
    <br/>
<br/><hr/>
    <?=$model->customer->nama?>  
</div>
</div>
</body>
</html>

<style>
.laporan {
    font-weight: bold;
    color: #00F;
    font-size: 18px;
}
.laporan table tr th {
    color: #000;
}

.laporan table tr td {
    color: #000;
    font-weight: normal;
}

.laporan table {
    font-size: 14px;
}

.tandatangan{
    text-align:center; width:425px;float:left;
}

.tandatangan2{
    text-align:center; margin-left:545px;
}

.kop{
    text-align:center;
    margin-left:0px;
    width:270px;
    margin-bottom:-10px;
}
.th_samping_gambar{
 Vertical-align: center;
}
.table1 {
        border: 1px solid black;
        border-collapse: collapse;
        width: 100%;
        padding: 1px;
        font-family: 'Source Sans Pro', 'Helvetica Neue', Helvetica, Arial, sans-serif;
        font-weight: 400;
        font-size: 14px;
        line-height: 1.42857143;
    }

    .table1 th {
        padding: 4px;
        /*border-bottom: 1px solid #000000; */
    }

    .table1 td {
        padding: 4px;
        border-bottom: 1px solid black;
        /* border-left: 1px solid #000000; */
        background-color: #F5F5F5;
    }

    .label1 {
        text-align: center;
        border-left: 1px solid black;
        background-color: #3c8dbc;
        /* border-color: #367fa9; */
        color: white;
    }

    .th_samping_gambar {
        width: 20%;
        text-align: left;
        white-space: nowrap;
        border-left: 1px solid black;
        border-bottom: 1px solid black;
        background-color: #F5F5F5;
    }

    .table2 {
        border: 1px solid black;
        border-collapse: collapse;
        width: 100%;
        padding: 1px;
        font-family: 'Source Sans Pro', 'Helvetica Neue', Helvetica, Arial, sans-serif;
        font-weight: 400;
        font-size: 14px;
        line-height: 1.42857143;
    }

    .table2 th {
        padding: 4px;
        border: 1px solid black;
    }

    .table2 td {
        padding: 4px;
        border: 1px solid black;
        background-color: #F5F5F5;
    }

    body {
        -webkit-print-color-adjust: exact !important;
    }

    @media print {
        @page {
            /* size: 297mm 210mm; */
        }
    }
    .box {
        width: 100%x;
        border-style: ridge;
        padding: 50px;
        text-align : center;
        
    }
</style>