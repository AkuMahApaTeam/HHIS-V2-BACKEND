<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
        /* @var $searchModel backend\models\NoIzinDokterSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'No Izin Dokters';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="no-izin-dokter-index">

    <?php echo $this->render('_search', ['model' => $searchModel]); ?>
           <p>
       <?= Html::a('Create No Izin Dokter', ['create'], ['class' => 'btn btn-success']) ?>
   </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        // 'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'no_izin',
            [
                            'attribute' => 'keahlian',
                            'value' => function ($model) {
                                return Html::a($model->keahlian0->spesialis);
                            },
                            'format' => 'raw',
                            
            ],
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
