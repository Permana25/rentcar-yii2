<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Customer */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="customer-form">
<div class="panel panel-info">
        <div class="panel-heading">
        </div>
        <div class="panel-body">
            <?php $form = ActiveForm::begin(); ?>

                <?= $form->field($model, 'nama')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'alamat')->textArea(['maxlength' => true,'rows'=>8]) ?>

                <?= $form->field($model, 'jenis_kelamin')->dropDownList(array(1 => "Laki-Laki", 2 => "Perempuan")) ?>

                <?= $form->field($model, 'no_telp')->textInput() ?>

                <?= $form->field($model, 'no_ktp')->textInput() ?>

                <div class="form-group">
                    <?= Html::a('<span class="btn-label"><i class="fa fa-arrow-left"></i></span>Kembali',['index'], ['class'=>'btn btn-danger btn-sm waves-effect-light']); ?>
                    <span class="pull-right">
                    <?= Html::submitButton('<span class="glyphicon glyphicon-floppy-saved"></span> Simpan', ['class' => 'btn btn-success']) ?>
                    </span> 
                </div>
               

                <?php ActiveForm::end(); ?>
        </div>
</div>
