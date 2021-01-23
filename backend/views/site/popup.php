<?php

/* @var $this yii\web\View */


$this->title = 'My Yii Application';

use kartik\dialog\DialogAsset;
DialogAsset::register($this);
$this->registerJs("$('#your-btn-id').on('click', function(){
	
	 
		krajeeDialog.alert('An alert');
		// or show a confirm
		krajeeDialog.confirm('Are you sure', function(out){
			if(out) {
				alert('Yes'); // or do something on confirmation
			}
		});
	 
	
});");


?>
<div class="site-index">

    <div class="jumbotron">
        <h3>Welcome, <?= Yii::$app->user->identity->nama?>!</h3>
        <p>Please select menu from navigation</p>
    </div>
	
	<button id="your-btn-id" class="btn btn-danger">Klik Me</button>

</div>
