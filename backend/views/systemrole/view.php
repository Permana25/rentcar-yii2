<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Systemrole */
if (Yii::$app->user->isGuest) { 
    header("Location: index.php");
    exit;
 }
$this->title = "Detail Hak Akses ".$model->id_system_role;
$this->params['breadcrumbs'][] = ['label' => 'Data Hak Akses', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="systemrole-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_system_role], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id_system_role], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>
    <div class="box">
    <div class="box-header">
    <div class="col-md-12" style="padding: 0;">
    <div class="box-body">
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id_system_role',
            'nama_role',
        ],
    ]) ?>
    </div>
    </div>
    </div>
    </div>
</div>
