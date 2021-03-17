<section class="invoice">
    <div class="row">
        <div class="col-xs-12">
            <h2 class="page-header">
                <i class="fa fa-globe"></i> GSS RENTAL
                <small class="pull-right">Tanggal Cetak : <?php echo date('d / m / Y') ?></small>
            </h2>
        </div>
    </div>
    <div class="row invoice-info">
        <div class="col-sm-4 invoice-col">
            Detail Customer :
            <address>
                <strong><?php echo date('d/m/Y', strtotime($model->tanggal ?? '')) ?></strong><br>
                <?= (!empty($model->customer->nama)) ? $model->customer->nama : 'Customer tidak ada/ sudah dihapus' ?><br>
                <?php if ($model->status == 1) {
                    echo '<label class="label label-success">Lunas</label>';
                } elseif ($model->status == 2) {
                    echo '<label class="label label-warning">Belum Lunas</label>';
                }
                ?><br>
                <!-- <?php
                if ($model->status_input == 0) {
                    echo 'Status: Belum Selesai';
                } elseif ($model->status_input == 1) {
                    echo 'Status: Sudah Selesai';
                }
                ?><br>
                Keterangan: <?php echo $model->keterangan ?? '' ?><br> -->
            </address>
        </div>

        <div class="col-sm-2 invoice-col">

        </div>

        <div class="col-md-6 invoice-col" style="white-space: nowrap; text-align: right;">

        </div>
    </div>

    <div class="row">
        <div class="col-xs-12 table-responsive">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Mobil</th>
                        <th style="text-align: right;">Denda</th>
                        <th style="text-align: right;">Harga</th>
                        <th style="text-align: right;">Total</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $total = 0;
                    if (!empty($queryTransaksi)) {
                        foreach ($queryTransaksi as $key => $model) {
                            $subTotal = $model->denda + $model->harga;
                            $total += $subTotal;
                    ?>
                            <tr>
                                <td><?= $model->mobil->merk ?></td>
                                <td style="text-align: right;"><?= ribuan($model->denda) ?></td>
                                <td style="text-align: right;"><?= ribuan($model->harga) ?></td>
                                <td style="text-align: right;"><?= ribuan($model->total) ?></td>
                            </tr>

                        <?php } ?>
                    <?php } ?>

                </tbody>
            </table>
        </div>
    </div>

    <div class="row">
        <!-- <div class="col-xs-6">
            <p class="lead">Metode Pembayaran : <b><?= ($model->tipe == 0) ? 'CREDIT' : 'CASH'; ?></b></p>

            <p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
                Biaya Tambahan Akan ditagihkan ketika customer tidak segera mengambil data penyimpanan pada tanggal yang sudah di tentukan
            </p>
        </div> -->
        <div class="col-xs-6">
            <!-- <p class="lead">Masa aktif hingga Tanggal : <b><?php echo date('d / m / Y', strtotime($model->tanggal_pengambilan ?? '')) ?></b></p> -->
            <div class="table-responsive">
                <table class="table">
                    <tbody>
                        <tr>
                            <th style="width:50%">Subtotal</th>
                            <td align="right">Rp</td>
                            <td align="right"><?php echo ribuan($total) ?></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>

<script language="javascript">
    window.print();
    var newWnd = window.open();
    newWnd.opener = null;
</script>