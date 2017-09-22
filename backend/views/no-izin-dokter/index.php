<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\NoIzinDokterSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'No Izin Dokters';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="no-izin-dokter-index">

    <?php echo $this->render('_search', ['model' => $searchModel]); ?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        // 'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'no_izin',
            'keahlian',
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
