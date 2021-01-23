<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Mobil */

$this->title = 'Update Mobil: ' . $model->id_mobil;
?>
<div class="mobil-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
