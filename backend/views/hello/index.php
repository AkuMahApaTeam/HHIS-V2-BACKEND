<?php
    echo Yii::getAlias('@vendor');
    echo "<br>";
//    $directoryAsset = Yii::$app->assetManager->getPublishedUrl('@vendor/almasaeed2010/adminlte/dist');
    echo Yii::getAlias('@vendor/almasaeed2010/adminlte/dist');
    echo "<br>";
    echo Yii::getAlias('@app/web/dist/');
    echo $directoryAsset;
?>