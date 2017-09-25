<?php

namespace app\models;

use Yii;
use backend\models\Spesialis\Spesialis;

/**
 * This is the model class for table "no_izin_dokter".
 *
 * @property string $no_izin
 * @property integer $keahlian
 *
 * @property Dokter[] $dokters
 * @property Spesialis $keahlian0 
 */
class NoIzinDokter extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'no_izin_dokter';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
             [['no_izin', 'keahlian'], 'required'],
             [['keahlian'], 'integer'],
            [['no_izin'], 'string', 'max' => 25],
            [['no_izin'], 'unique'],
           [['keahlian'], 'exist', 'skipOnError' => true, 'targetClass' => Spesialis::className(), 'targetAttribute' => ['keahlian' => 'id']], 
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'no_izin' => 'No Izin',
            'keahlian' => 'Keahlian',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDokters()
    {
        return $this->hasMany(Dokter::className(), ['no_izin' => 'no_izin']);
    }
     /** 
    * @return \yii\db\ActiveQuery 
    */ 
   public function getKeahlian0() 
   { 
       return $this->hasOne(Spesialis::className(), ['id' => 'keahlian']); 
   } 
}
