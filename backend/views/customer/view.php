<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $model backend\models\Customer */

$this->title = 'DETAIL CUSTOMER';
\yii\web\YiiAsset::register($this);
?>
<div class="customer-view">
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
                <div class="row">
                    <div class="col-md-6">
                <?= DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                    'id_customer',
                    'nama',
                    'alamat',
                    [
                        'attribute' => 'jenis_kelamin',
                        'format'    => 'raw',
                        'filter'    => array(1=>"Laki-Laki", 2=>"Perempuan"),
                        'value'     => function ($model) {
                        return $model->jenis_kelamin == 1 ? "Laki-Laki" : "Perempuan";
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
            </div>
        </div>
    </div>
</div> 
  