<?php

namespace common\models\artikel;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\artikel\Artikel;

/**
 * ArtikelSearch represents the model behind the search form about `common\models\artikel\Artikel`.
 */
class ArtikelSearch extends Artikel
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_artikel'], 'integer'],
            [['judul', 'deskripsi', 'image', 'abstrak'], 'safe'],
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
        $query = Artikel::find();

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
            'id_artikel' => $this->id_artikel,
        ]);

        $query->andFilterWhere(['like', 'judul', $this->judul])
            ->andFilterWhere(['like', 'deskripsi', $this->deskripsi])
            ->andFilterWhere(['like', 'image', $this->image])
            ->andFilterWhere(['like', 'abstrak', $this->abstrak]);

        return $dataProvider;
    }
}
