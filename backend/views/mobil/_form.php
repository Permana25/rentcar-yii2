<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\Mobil */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="mobil-form">
<div class="box box-primary">
    <div class="box-header">
        <div class="box-body" style="overflow-x: auto;">
            <?php $form = ActiveForm::begin(); ?>
                <div class="row">
                    <div class="col-md-6">
                        <?= $form->field($model, 'merk')->textInput(['maxlength' => true]) ?>

                        <?= $form->field($model, 'no_plat')->textInput(['maxlength' => true]) ?>

                         <?= $form->field($model, 'jenis')->dropDownList(array(1 => "Manual", 2 => "Automatic"), ['prompt' => 'Masukan Jenis']) ?>

                        <?= $form->field($model, 'warna')->textInput(['maxlength' => true]) ?>
                    </div>
                    <div class="col-md-6">
                        <?= $form->field($model, 'tahun')->textInput() ?>                                                                                     
                        <?= $form->field($model, 'status')->dropDownList(array(1 => "Pesan", 2 => "Sudah dipesan"),['prompt' => 'Masukan Status']) ?>

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
