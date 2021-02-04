<?php
use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \common\models\LoginForm */

$path = \Yii::getAlias("@web");
$frontend = \Yii::getAlias("@frontend");

$this->title = 'Sign In';

$fieldOptions1 = [
    'options' => ['class' => 'form-group has-feedback'],
    'inputTemplate' => "{input}<span style='color: #000000;' class='glyphicon glyphicon-envelope form-control-feedback'></span>"
];

$fieldOptions2 = [
    'options' => ['class' => 'form-group has-feedback'],
    'inputTemplate' => "{input}<span style='color: #000000;' class='glyphicon glyphicon-lock form-control-feedback'></span>"
];
?>

<div class="login-box">
    <div class="login-logo">
        </div>
            <div class="login-box-body" style="background:rgba(255,255,255, 0.1)">
            <div align="center">
                <div class="row">
                    <div class="col-md-12 formnya" style="margin-left:0px;">
                        <div class="row" style="left: auto; margin: 10px;">
                            <div class="col-md-1"></div>
                                <div class="col-md-10" style="margin-top: 0px; margin-bottom: 10px; color: black;">
                                    <p>WELCOME TO</p>
                                        <h2 style="color: black; margin-top: 10px;" class="gss"><b>GSS RENTAL</b> 
                                            <img src="upload/logo1.png" width="200px"><br><br></h2>


        <?php $form = ActiveForm::begin(['id' => 'login-form', 'enableClientValidation' => false]); ?>

        <?= $form
            ->field($model, 'username', $fieldOptions1)
            ->label(false)
            ->textInput(['placeholder' => $model->getAttributeLabel('username')]) ?>

        <?= $form
            ->field($model, 'password', $fieldOptions2)
            ->label(false)
            ->passwordInput(['placeholder' => $model->getAttributeLabel('password')]) ?>
   

        <div class="form-group">
            <?= Html::submitButton('LOGIN', ['class' => 'btn btn-primary', 'name' => 'login-button']) ?>
        </div>
        <div class="col-md-1"></div>
        <br>

        <div class="row" style="margin-top: -50px;">
                        <div class="col-lg-12 info">
                            <p>About Developer</p>
                            <a href="https://www.facebook.com/garudasaranasejahtera"><i class="fa fa-facebook"></i></a> &nbsp;
                            <a href="https://www.instagram.com/gss_software/"><i class="fa fa-instagram"></i></a> &nbsp;
                            <a href="http://klikgss.com"><i class="fa fa-globe"></i></a> &nbsp;
                            <a href="mailto:informasi@klikgss.com"><i class="fa fa-envelope"></i></a> &nbsp;
                        </div>
                    </div>


        <?php ActiveForm::end(); ?>


    </div>
    <!-- /.login-box-body -->
</div><!-- /.login-box -->
<style>
.info a {
        /* color: rgba(22, 194, 230, 1); */
        color: black;
    }

</style>