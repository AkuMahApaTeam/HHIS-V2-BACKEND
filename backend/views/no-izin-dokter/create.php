<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\NoIzinDokter */

$this->title = 'Create No Izin Dokter';
$this->params['breadcrumbs'][] = ['label' => 'No Izin Dokters', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="no-izin-dokter-create">


    <?= $this->render('_form', [
        'model' => $model,
        'errorMess' => $errorMess,
    ]) ?>

</div>
