<?php

namespace backend\models\Spesialis;

use Yii;

/**
 * This is the model class for table "spesialis".
 *
 * @property string $spesialis
 * @property integer $id
 *
 * @property NoIzinDokter[] $noIzinDokters
 */
class Spesialis extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spesialis';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['spesialis'], 'required'],
            [['spesialis'], 'string', 'max' => 70],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'spesialis' => 'Spesialis',
            'id' => 'ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getNoIzinDokters()
    {
        return $this->hasMany(NoIzinDokter::className(), ['keahlian' => 'id']);
    }
}
