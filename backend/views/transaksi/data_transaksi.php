<!DOCTYPE html>
<html>
<head>
    <title>Print Invoice</title>
    <style>
        .page
        {           
            padding:2cm;
        }
        table
        {
            border-spacing:0;
            border-collapse: collapse; 
            width:100%;
        }

        table td, table th
        {
            border: 1px solid #ccc;
        }
		
		table th
        {
            background-color:red;
        }
    </style>
</head>
<body>	
    <div class="page">	
        <h1>Data Transaksi</h1>
        <table border="0">
        <tr>
                <th>No</th>
                <th>Nama</th>
                <th>Mobil</th>
                <th>Tanggal</th>
                <th>Harga</th>
                <th>Status</th>
        </tr>
        <?php
        $no = 1;
        foreach($dataProvider->getModels() as $value){ 
        ?>
        <tr>
                <td><?= $no++ ?></td>
                <td style="text-transform: uppercase;"><?= $value->customer->nama ?></td>
                <td style="text-transform: uppercase;"><?= $value->mobil->merk ?></td>
                <td style="text-transform: uppercase;"><?= tanggal_indo($value->tanggal,true) ?></td>
                <td style="text-transform: uppercase;"><?= 'Rp.' . ribuan($value->total); ?></td>
                <td>
                    <?php if ($value->status == 1) {
                    echo '<label class="label label-success">Lunas</label>';
                    } elseif ($value->status == 2) {
                    echo '<label class="label label-warning">Belum Lunas</label>';
                        }
                    ?>
                </td>
        </tr>
        <?php
        }
        ?>
        </table>
    </div>   
</body>
</html>