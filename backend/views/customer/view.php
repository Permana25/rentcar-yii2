<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Customer */

$this->title = 'DETAIL CUSTOMER';
\yii\web\YiiAsset::register($this);
?>
<div class="customer-view panel panel-info">
<div class="panel-heading">
        <h4>
            <?= Html::encode($this->title) ?>
            <span class="pull-right">
                    <?= Html::a('Lihat Semua', ['index'], ['class' => 'btn btn-success btn-sm']) ?>
                    <?= Html::a('Ubah', ['update', 'id' => $model->id_customer], ['class' => 'btn btn-primary btn-sm']) ?>
                    <?= Html::a('Hapus', ['delete', 'id' => $model->id_customer], [
                    'class' => 'btn btn-danger btn-sm',
                    'data' => [
                        'confirm' => 'Are you sure you want to delete this item?',
                        'method' => 'post',
                    ],
                ]) ?>

            </span>
        </h4>
    </div>
    <div class="panel-body">
        <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
        // 'id_customer',
            'nama',
            'alamat',
            [
                'attribute' => 'jenis_kelamin',
                'format'    => 'raw',
                'filter'    => array(1=>"Laki-Laki", 2=>"Perempuan"),
                'value'     => function ($model)
                {
                    return $model->jenis_kelamin == 1 ? "<span class='label label-success'>Laki-Laki</span>" : "<span class='label label-warning'>Perempuan</span>";
                }
            ],
            'no_telp',
            'no_ktp',
            [
                'attribute' => 'foto',
                'format'   => 'raw',
                'label'    => 'foto',
                'value'    => function ($model)
                {
                    return "<img src='upload/$model->foto' width='150'>";
                
                }

            ],
            ],
        ]) ?>
    </div>
</div>
