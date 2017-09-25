<?php

namespace backend\controllers;

use Yii;
use app\models\NoIzinDokter;
use backend\models\NoIzinDokterSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * NoIzinDokterController implements the CRUD actions for NoIzinDokter model.
 */
class NoIzinDokterController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all NoIzinDokter models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new NoIzinDokterSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single NoIzinDokter model.
      * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new NoIzinDokter model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new NoIzinDokter();
        $searchModel = new NoIzinDokterSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        if ($model->load(Yii::$app->request->post())  && $model->validate()) {
          if($model->save()){
            echo "<script>";
            echo "alert('berhasil')";
            echo "</script>";
            return $this->render('index', [
              'searchModel' => $searchModel,
              'dataProvider' => $dataProvider,
            ]);
          }else{}
        } else {
            $errorMess = $model->errors;
            return $this->render('create', [
                'model' => $model,
                'errorMess' => $errorMess,
            ]);
        }
    }

    /**
     * Updates an existing NoIzinDokter model.
     * If update is successful, the browser will be redirected to the 'view' page.
    
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            //return $this->redirect(['view', 'id' => $model->no_izin]);
             return $this->redirect(['view', 'id' => $model->id_no_izin]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing NoIzinDokter model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the NoIzinDokter model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
      * @param integer $id
     * @return NoIzinDokter the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = NoIzinDokter::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
