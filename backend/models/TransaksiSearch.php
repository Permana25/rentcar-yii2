<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Transaksi;

/**
 * TransaksiSearch represents the model behind the search form of `backend\models\Transaksi`.
 */
class TransaksiSearch extends Transaksi
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_transaksi', 'id_customer', 'id_mobil', 'harga', 'denda', 'status'], 'integer'],
            [['tgl_pinjam', 'tgl_kembali', 'tanggal','jam_pinjam','jam_kembali'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
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
        $query = Transaksi::find()
        ->joinWith('mobil')
        ->joinWith('customer');

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
            'id_transaksi' => $this->id_transaksi,
            'id_customer' => $this->id_customer,
            'id_mobil' => $this->id_mobil,
            'tgl_pinjam' => $this->tgl_pinjam,
            'tgl_kembali' => $this->tgl_kembali,
            'harga' => $this->harga_sewa,
            'denda' => $this->denda,
            'tanggal' => $this->tanggal,
            'status' => $this->status,
        ]);

        return $dataProvider;
    }
}
