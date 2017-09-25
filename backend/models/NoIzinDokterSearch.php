<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\NoIzinDokter;

/**
 * NoIzinDokterSearch represents the model behind the search form about `app\models\NoIzinDokter`.
 */
class NoIzinDokterSearch extends NoIzinDokter
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_no_izin', 'keahlian'], 'integer'],
           [['no_izin'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = NoIzinDokter::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
             $query->andFilterWhere([
           'id_no_izin' => $this->id_no_izin,
           'keahlian' => $this->keahlian,
       ]);
       $query->andFilterWhere(['like', 'no_izin', $this->no_izin]);

        return $dataProvider;
    }
}
