<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "artikel_dokter".
 *
 * @property integer $id_artikel_dokter
 * @property integer $id_dokter
 * @property integer $id_artikel
 *
 * @property Dokter $idDokter
 * @property Artikel $idArtikel
 */
class ArtikelDokter extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'artikel_dokter';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_artikel_dokter'], 'required'],
            [['id_artikel_dokter', 'id_dokter', 'id_artikel'], 'integer'],
            [['id_dokter'], 'exist', 'skipOnError' => true, 'targetClass' => Dokter::className(), 'targetAttribute' => ['id_dokter' => 'id_dokter']],
            [['id_artikel'], 'exist', 'skipOnError' => true, 'targetClass' => Artikel::className(), 'targetAttribute' => ['id_artikel' => 'id_artikel']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_artikel_dokter' => 'Id Artikel Dokter',
            'id_dokter' => 'Id Dokter',
            'id_artikel' => 'Id Artikel',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIdDokter()
    {
        return $this->hasOne(Dokter::className(), ['id_dokter' => 'id_dokter']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIdArtikel()
    {
        return $this->hasOne(Artikel::className(), ['id_artikel' => 'id_artikel']);
    }
}
