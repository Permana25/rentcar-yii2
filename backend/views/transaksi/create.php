<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Transaksi */

$this->title = 'Create Transaksi';
?>
<div class="transaksi-create">

    <?= $this->render('_form', [
        'data_mobil' => $data_mobil,
        'data_customer' => $data_customer,
        'model' => $model,
    ]) ?>

</div>
