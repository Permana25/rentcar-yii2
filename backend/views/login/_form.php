<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\Arrayhelper;

use yii\jui\AutoComplete;
use yii\web\JsExpression;
use kartik\datetime\DateTimePicker;

/* @var $this yii\web\View */
/* @var $model backend\models\Login */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="box">
    <div class="box-header">
        <div class="col-md-4" style="padding: 0;">
            <div class="box-body">

                <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

                <?= $form->field($model, 'username')->textInput(['maxlength' => true]) ?>

                <?php

				$model->password = "";
				echo $form->field($model, 'password')->passwordInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'nama')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'foto')->fileInput() ?>

                <!-- <?php

                // $the_desa = "";
                // if ($selected_desa != "") {
                //     $the_desa = $selected_desa->nama_desa;
                // }

                // echo '<label class="control-label">Nama Desa</label><br>';
                // echo AutoComplete::widget([
                //     'clientOptions' => [
                //         'source' => $array_desa,
                //         'minLength' => '2',
                //         'autoFill' => true,
                //         'select' => new JsExpression("function( event, ui ) {
                //             $('#login-id_desa').val(ui.item.id);                            
                //         }")
                //     ],
                //     'options' => ['class' => 'form-control'],
                //     'name' => 'Login[datadesa]',
                //     'value' => $the_desa,
                // ]);


                // echo $form->field($model, 'id_desa')
                //     ->hiddenInput(["value" => $model->id_desa, "readonly" => true])
                //     ->label(false);
                ?> -->

                <?php
                if ($model->foto != "") {
                    echo "<img src='upload/$model->foto' width='150'>";
                }
                ?>

                <div class="form-group"><br>
                    <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
                </div>

                <?php ActiveForm::end(); ?>

            </div>
        </div>
    </div>
</div>