<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Mobil */

$this->title = 'DETAIL MOBIL';
\yii\web\YiiAsset::register($this);
?>
<div class="mobil-view panel-info">
<div class="panel-heading">
        <h4>
            <?= Html::encode($this->title) ?>
            <span class="pull-right">
                    <?= Html::a('Lihat Semua', ['index'], ['class' => 'btn btn-success btn-sm']) ?>
                    <?= Html::a('Ubah', ['update', 'id' => $model->id_mobil], ['class' => 'btn btn-primary btn-sm']) ?>
                    <?= Html::a('Hapus', ['delete', 'id' => $model->id_mobil], [
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
            // 'id_mobil',
            'merk',
            'no_plat',
            'warna',
            'tahun',
            [
                'attribute' => 'status',
                'format'    => 'raw',
                'filter'    => array(1=>"Pesan", 2=>"Sudah dipesan"),
                'value'     => function ($model)
                {
                    return $model->status == 1 ? "<span class='label label-success'>Pesan</span>" : "<span class='label label-warning'>Sudah dipesan</span>";
                }
            ],
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
