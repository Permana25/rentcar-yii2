<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\TransaksiSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="transaksi-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_transaksi') ?>

    <?= $form->field($model, 'id_customer') ?>

    <?= $form->field($model, 'id_mobil') ?>

    <?= $form->field($model, 'tgl_pinjam') ?>

    <?= $form->field($model, 'tgl_kembali') ?>

    <?php // echo $form->field($model, 'harga') ?>

    <?php // echo $form->field($model, 'denda') ?>

    <?php // echo $form->field($model, 'tanggal') ?>

    <?php // echo $form->field($model, 'status') ?>

    <?php // echo $form->field($model, 'total') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
