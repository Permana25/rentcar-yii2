<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Transaksi */

$this->title = 'Update Transaksi: ' . $model->id_transaksi;
?>
<div class="transaksi-update">

    <?= $this->render('_form', [
        'model' => $model,
        'data_mobil' => $data_mobil,
        'data_customer' => $data_customer
    ]) ?>

</div>
