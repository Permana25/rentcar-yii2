<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\MobilSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="mobil-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_mobil') ?>

    <?= $form->field($model, 'merk') ?>

    <?= $form->field($model, 'no_plat') ?>

    <?= $form->field($model, 'warna') ?>

    <?= $form->field($model, 'tahun') ?>

    <?php // echo $form->field($model, 'status') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
