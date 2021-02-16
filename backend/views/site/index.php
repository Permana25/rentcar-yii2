<?php

/* @var $this yii\web\View */

if (Yii::$app->user->isGuest) { 
   header("Location: index.php");
   exit;
}
$this->title = 'My Yii Application';
?>
<div class="site-index">

<!-- Small boxes (Stat box) -->
<div class="row">
        <div class="col-lg-4 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3><?= $transaksi ?></h3>

              <p>Data Transaksi</p>
            </div>
            <div class="icon">
              <i class="ion ion-bag"></i>
            </div>
            <a href="index.php?r=transaksi" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3><?= $mobil ?></h3>

              <p>Data Mobil</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
            <a href="index.php?r=mobil" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3><?= $customer ?></h3>

              <p>Data Customer</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
            <a href="index.php?r=customer" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
      

<div class="jumbotron">
    <h3>Welcome, <?= Yii::$app->user->identity->nama?>!</h3>
    <p>Welcome To GSS Rental</p>
</div>