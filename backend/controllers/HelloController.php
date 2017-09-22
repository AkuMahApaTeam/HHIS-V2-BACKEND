<?php

namespace backend\controllers;

use Yii;
use yii\web\Controller;


/**
 * NoIzinDokterController implements the CRUD actions for NoIzinDokter model.
 */
class HelloController extends Controller
{
    public function actionIndex()
    {
        return $this->render('index');
    }
}
