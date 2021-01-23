<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\Mobil */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="mobil-form">
<div class="panel panel-info">
        <div class="panel-heading">
        </div>
        <div class="panel-body">
            <?php $form = ActiveForm::begin(); ?>

            <?= $form->field($model, 'merk')->textInput(['maxlength' => true]) ?>

            <?= $form->field($model, 'no_plat')->textInput(['maxlength' => true]) ?>

            <?= $form->field($model, 'warna')->textInput(['maxlength' => true]) ?>

            <?= $form->field($model, 'tahun')->textInput() ?>                                                                                                                                                                                                                                                                          

            <?= $form->field($model, 'status')->dropDownList(array(1 => "Pesan", 2 => "Sudah dipesan")) ?>

            <?= $form->field($model, 'foto')->fileInput(['maxlength' => true]) ?>

            <div class="form-group">
                    <?= Html::a('<span class="btn-label"><i class="fa fa-arrow-left"></i></span>Kembali',['index'], ['class'=>'btn btn-danger btn-sm waves-effect-light']); ?>
                    <span class="pull-right">
                    <?= Html::submitButton('<span class="glyphicon glyphicon-floppy-saved"></span> Simpan', ['class' => 'btn btn-success']) ?>
                    </span> 
                </div>

            <?php ActiveForm::end(); ?>

        </div>
</div>
