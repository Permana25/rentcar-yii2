<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Customer */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="customer-form">
<div class="box box-primary">
    <div class="box-header">
        <div class="box-body" style="overflow-x: auto;">
            <?php $form = ActiveForm::begin(); ?>
                <div class="row">
                    <div class="col-md-6">
                        <?= $form->field($model, 'nama')->textInput(['maxlength' => true]) ?>

                        <?= $form->field($model, 'alamat')->textArea(['maxlength' => true,'rows'=>8]) ?>

                    </div>
                    <div class="col-md-6">
                        <?= $form->field($model, 'jenis_kelamin')->dropDownList(array(1 => "Laki-Laki", 2 => "Perempuan"),['prompt' => 'Masukan Jenis Kelamin']) ?>
                        <?= $form->field($model, 'no_ktp')->textInput() ?>

                        <?= $form->field($model, 'no_telp')->textInput() ?>

                        <?= $form->field($model, 'foto')->fileInput(['maxlength' => true]) ?>
                    </div>
                </div>
                <div class="form-group">
                     <?= Html::a('<span class="glyphicon glyphicon-circle-arrow-left"></span> Kembali', ['index'], ['class' => 'btn btn-warning btn btn-sm']) ?>
                    <?= Html::submitButton('<span class="glyphicon glyphicon-floppy-saved"></span> Simpan', ['class' => 'btn btn-success btn btn-sm']) ?>
                </div>

                <?php ActiveForm::end(); ?>
            </div>
        </div>
    </div>
</div>
