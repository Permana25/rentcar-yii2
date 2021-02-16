<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MenuNavigasi */

$this->title = 'Update Menu Navigasi: ' . $model->id_menu;
?>
<div class="menu-navigasi-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'menuParent' => $menuParent,
    ]) ?>

</div>
