<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\date\DatePicker;
use kartik\datetime\DateTimePicker;
use kartik\select2\Select2;
use kartik\time\TimePicker;
use yii\widgets\MaskedInput;

/* @var $this yii\web\View */
/* @var $model backend\models\Transaksi */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="transaksi-form">
<div class="box box-primary">
    <div class="box-header">
        <div class="box-body" style="overflow-x: auto;">
            <?php $form = ActiveForm::begin(); ?>

            <div class="row">
                <div class="col-md-6">
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

                   <!--  <?= $form->field($model, 'harga')->widget(
                        \yii\widgets\MaskedInput::className(),
                        [
                            'clientOptions' => ['alias' => 'decimal', 'groupSeparator' => '.', 'autoGroup' => true, 'removeMaskOnSubmit' => true, 'rightAlign' => false, 'min' => 0],
                            'options' => []
                        ]
                            ); 
                    ?> -->

                    <?=
                    $form->field($model, 'tgl_pinjam')->widget(DatePicker::classname(), [
                        'options' => ['placeholder' => 'Masukan Tanggal dan Waktu'],
                        'pluginOptions' => [
                        'todayHighlight' => true ,  
                        'todayBtn' => true , 
                        'autoclose' => true,
                        'format' => 'yyyy-mm-dd '
                        ]
                    ]);
                    ?>

                   

                    <?= $form->field($model, 'jam_pinjam')->widget(TimePicker::classname()); ?>

                     <?=
                    $form->field($model, 'tgl_kembali')->widget(DatePicker::classname(), [
                        'options' => ['placeholder' => 'Masukan Tanggal dan Waktu'],
                        'pluginOptions' => [
                        'todayHighlight' => true ,  
                        'todayBtn' => true , 
                        'autoclose' => true,
                        'format' => 'yyyy-mm-dd '
                        ]
                    ]);
                    ?>
                </div>
                <div class="col-md-6">
        
                     <?= $form->field($model, 'jam_kembali')->widget(TimePicker::classname()); ?>


                    <!-- <?= $form->field($model, 'harga')->widget(
                        \yii\widgets\MaskedInput::className(),
                        [
                            'clientOptions' => ['alias' => 'decimal', 'groupSeparator' => '.', 'autoGroup' => true, 'removeMaskOnSubmit' => true, 'rightAlign' => false, 'min' => 0],
                            'options' => []
                        ]
                            ); 
                    ?>  -->

                    <!-- <?= $form->field($model, 'denda')->widget(
                        \yii\widgets\MaskedInput::className(),
                        [
                            'clientOptions' => ['alias' => 'decimal', 'groupSeparator' => '.', 'autoGroup' => true, 'removeMaskOnSubmit' => true, 'rightAlign' => false, 'min' => 0],
                            'options' => []
                        ]
                    ); ?> -->

                    <?= $form->field($model, 'tanggal')->widget(DatePicker::classname(), [
                        'options' => ['placeholder' => 'Masukan Tanggal'],
                        'pluginOptions' => [
                        'todayHighlight' => true ,  
                        'todayBtn' => true , 
                        'autoclose'=>true,
                        'format' => 'yyyy-mm-dd '
                            ]
                        ]);
                    ?>

                    <?= $form->field($model, 'status')->dropDownList(array(1 => "Lunas", 2 => "Belum Lunas"),['prompt' => 'Masukan Status']) ?>

                    <?= $form->field($model, 'catatan')->textArea(['maxlength' => true,'rows'=>4]) ?>
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
