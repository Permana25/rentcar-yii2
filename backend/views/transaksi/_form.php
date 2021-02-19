<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\date\DatePicker;
use kartik\datetime\DateTimePicker;
use kartik\select2\Select2;

/* @var $this yii\web\View */
/* @var $model backend\models\Transaksi */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="transaksi-form">
<div class="panel panel-info">
        <div class="panel-heading">
        </div>
<div class="panel-body">
            <?php $form = ActiveForm::begin(); ?>

            <?= $form->field($model,'id_customer')->widget(Select2::classname(), [
                                    'data' => $data_customer,
                                    'language' => 'en',
                                    'options' => ['placeholder' => 'customer'],
                                    'pluginOptions' => [
                                    'allowClear' => true
                                    ],
                                    
                                ])->label('customer')
                ?>
             <?= $form->field($model, 'id_mobil')->widget(Select2::classname(), [
                                    'data' => $data_mobil,
                                    'language' => 'en',
                                    'options' => ['placeholder' => 'mobil'],
                                    'pluginOptions' => [
                                    'allowClear' => true
                                    ],
                                    
                                ])->label('mobil')
                            ?>
                <?=
                    $form->field($model, 'tgl_pinjam')->widget(DateTimePicker::classname(), [
                        'options' => ['placeholder' => 'Masukan Tanggal dan Waktu'],
                        'pluginOptions' => [
                        'autoclose' => true,
                        'format' => 'dd-M-yyyy hh:ii'
                        ]
                    ]);
                ?>

                <?=
                    $form->field($model, 'tgl_kembali')->widget(DateTimePicker::classname(), [
                        'options' => ['placeholder' => 'Masukan Tanggal dan Waktu'],
                        'pluginOptions' => [
                        'autoclose' => true,
                        'format' => 'dd-M-yyyy hh:ii'
                        ]
                    ]);
                ?>

                <?= $form->field($model, 'harga')->textInput() ?>

                <?= $form->field($model, 'denda')->textInput() ?>

                <?=
                    $form->field($model, 'tanggal')->widget(DatePicker::classname(), [
                        'options' => ['placeholder' => 'Masukan Tanggal'],
                        'pluginOptions' => [
                        'todayHighlight' => true ,  
                        'todayBtn' => true , 
                        'autoclose'=>true,
                        'format' => 'dd-M-yyyy hh:ii'
                        ]
                    ]);
                ?>

                <?= $form->field($model, 'status')->dropDownList(array(1 => "Lunas", 2 => "Belum Lunas")) ?>  

                <div class="form-group">
                    <?= Html::a('<span class="btn-label"><i class="glyphicon glyphicon-arrow-left"></i></span>Kembali',['index'], ['class'=>'btn btn-danger btn-sm waves-effect-light']); ?>
                    <span class="pull-right">
                    <?= Html::submitButton('<span class="glyphicon glyphicon-floppy-saved"></span> Simpan', ['class' => 'btn btn-success']) ?>
                    </span> 
                </div>


                <?php ActiveForm::end(); ?>
            </div>
</div>
