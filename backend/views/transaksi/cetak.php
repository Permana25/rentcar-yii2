<style>
    .table1 {
        border: 1px solid #000000;
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
        border-bottom: 1px solid #000000;
        /* border-left: 1px solid #000000; */
        background-color: #F5F5F5;
    }

    .label1 {
        text-align: center;
        border-left: 1px solid #000000;
        background-color: #3c8dbc;
        /* border-color: #367fa9; */
        color: white;
    }

    .th_samping_gambar {
        width: 20%;
        text-align: left;
        white-space: nowrap;
        border-left: 1px solid #000000;
        border-bottom: 1px solid #000000;
        background-color: #F5F5F5;
    }

    .table2 {
        border: 1px solid #000000;
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
        border: 1px solid #000000;
    }

    .table2 td {
        padding: 4px;
        border: 1px solid #000000;
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
</style>
<table class="table1"> 
    <thead>
        <tr>
            <td>
                <th><img src="upload/<?= $model->customer->foto ?>" width='150'></th>
                <!-- <th><img src="upload/<?= $model->mobil->foto ?>" width='150'></th>            -->
            </td> 
        </tr>
        <tr>
            <th colspan="2" class="label1"> IDENTITAS CUSTOMER </th>
        </tr>
        <tr>
            <th class="th_samping_gambar"> Nama </th>
            <td> : <?= $model->customer->nama ?></td>
        </tr>
        <tr>
            <th class="th_samping_gambar"> Alamat </th>
            <td> : <?= $model->customer->alamat ?></td>
        </tr>
        <tr>
            <th class="th_samping_gambar"> Jenis Kelamin </th>
            <td> : <?= ($model->customer->jenis_kelamin == 1) ? 'Laki-Laki' : 'Perempuan' ?></td>
        </tr>
        <tr>
            <th class="th_samping_gambar"> No Telp </th>
            <td> : <?= $model->customer->no_telp ?></td>
        </tr>
        <tr>
            <th class="th_samping_gambar"> No KTP </th>
            <td> : <?= $model->customer->no_ktp ?></td>
        </tr>
        <tr>
            <th colspan="4" class="label1"> DATA TRANSAKSI </th>
        </tr>
        <tr>
            <td colspan="4" class="label1">
                <table align="center" id="transaksi" border='1'>
                    <thead>
                        <th> Nama Mobil </th>
                        <th> Tanggal Pinjam </th>
                        <th> Tanggal Kembali </th>
                        <th> Harga </th>
                        <th> Status </th>
                    </thead>
                    <tbody>
                      / -->
                            <tr>
                                <td><?= $model->mobil->merk ?></td>
                                <td><?= tanggal_indo($model->tgl_pinjam, true) ?></td>
                                <td><?= tanggal_indo($model->tgl_kembali,true) ?></td>
                                <td><?= ribuan($model->harga) ?></td>
                                <td><?= ($model->status == 1) ? 'Lunas' : 'Belum Lunas' ?></td>
                            </tr>
                
                  </tbody>
        </tr>
    </thead>
</table>