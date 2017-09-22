<?php

namespace api\modules\v1\controllers;

use yii\rest\ActiveController;
use common\models\User;
use yii;
/**
 * Country Controller API
 *
 * @author Budi Irawan <deerawan@gmail.com>
 */
 class AuthController extends \yii\rest\Controller
 {
   public function actionLogin()
  {
      $post = Yii::$app->request->post();
      $model = User::findOne(["email" => $post["email"]]);
      if (empty($model)) {
          throw new \yii\web\NotFoundHttpException('User not found');
      }
      if ($model->validatePassword($post["password"])) {
          $model->last_login = Yii::$app->formatter->asTimestamp(date_create());
          $model->save(false);
          return $model; //return whole user model including auth_key or you can just return $model["auth_key"];
      } else {
          throw new \yii\web\ForbiddenHttpException();
      }
  }
 }
