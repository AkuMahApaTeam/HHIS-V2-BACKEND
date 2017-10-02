<?php

namespace common\models\noIzinDokter;

use Yii;

/**
 * This is the model class for table "no_izin_dokter".
 *
 * @property integer $id_no_izin
 * @property string $no_izin
 * @property string $keahlian
 *
 * @property Dokter[] $dokters
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
            [['no_izin'], 'required'],
            [['no_izin'], 'string', 'max' => 25],
            [['keahlian'], 'string', 'max' => 255],
            [['no_izin'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_no_izin' => 'Id No Izin',
            'no_izin' => 'No Izin',
            'keahlian' => 'Keahlian',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDokters()
    {
        return $this->hasMany(Dokter::className(), ['id_no_izin' => 'id_no_izin']);
    }
}
