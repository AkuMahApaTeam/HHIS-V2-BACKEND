<?php

namespace common\models\artikel;

use Yii;
use yii\web\UploadedFile;

/**
 * This is the model class for table "artikel".
 *
 * @property integer $id_artikel
 * @property string $judul
 * @property string $deskripsi
 * @property string $image
 * @property string $abstrak
 *
 * @property ArtikelDokter[] $artikelDokters
 */
class Artikel extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
     public $file1;
    public static function tableName()
    {
        return 'artikel';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['judul', 'deskripsi', 'abstrak'], 'string'],
            [['image'], 'string', 'max' => 255],
            [['image'], 'safe'],
            [['file1'], 'file', 'extensions'=>'gif,jpg'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_artikel' => 'Id Artikel',
            'judul' => 'Judul',
            'deskripsi' => 'Deskripsi',
            'image' => 'Image',
            'abstrak' => 'Abstrak',
        ];
    }
    public function beforeSave($insert){
    if(parent::beforeSave($insert)){
        if (Yii::$app->request->isPost) {
            $this->file1 = UploadedFile::getInstance($this, 'file1');
            if ($this->file1 && $this->validate()) {

                $this->file1->saveAs('uploads/' . $this->file1->baseName . '.' .$this->file1->extension);
                $this->image = 'uploads/'.$this->file1->baseName . '.' .$this->file1->extension;
                return true;
            }
        }
    }
    else{
      return false;
    }
  }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getArtikelDokters()
    {
        return $this->hasMany(ArtikelDokter::className(), ['id_artikel' => 'id_artikel']);
    }
}
