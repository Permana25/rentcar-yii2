<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Mobil */

$this->title = 'DETAIL MOBIL';
\yii\web\YiiAsset::register($this);
?>
<div class="mobil-view">
        <h1>
            <?= Html::encode($this->title) ?>
            <p>
                    <?= Html::a('<i class="glyphicon glyphicon-circle-arrow-left"></i> Kembali', ['index'], ['class' => 'btn btn-warning btn-sm']) ?>
            </p>
        </h1>
    </div>
<div class="box box-primary">
    <div class="box-header">
        <div class="col-md-12" style="padding: 0;">
            <div class="box-body" style="overflow-x: auto;">
                <?= DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                        'id_mobil',
                        'merk',
                        'no_plat',
                        [
                            'attribute' => 'jenis',
                            'format'    => 'raw',
                            'filter'    => array(1=>"Manual", 2=>"Automatic"),
                            'value'     => function ($model)
                            {
                                return $model->jenis == 1 ? "<span class='label label-success'>Manual</span>" : "<span class='label label-warning'>Automatic</span>";
                            }
                        ],
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
    </div>
</div>
