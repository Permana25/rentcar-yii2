<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "transaksi".
 *
 * @property int $id_transaksi
 * @property int $id_customer
 * @property int $id_mobil
 * @property string $tgl_pinjam
 * @property string $tgl_kembali
 * @property int $harga
 * @property int $denda
 * @property string $tanggal
 * @property int $status
 */
class Transaksi extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'transaksi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_customer', 'id_mobil', 'tgl_pinjam', 'jam_pinjam', 'tgl_kembali','jam_kembali', 'harga', 'denda', 'tanggal', 'status'], 'required'],
            [['id_customer', 'id_mobil', 'harga', 'denda', 'status', 'total'], 'integer'],
            [['tgl_pinjam', 'tgl_kembali', 'tanggal','jam_pinjam', 'jam_kembali'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_transaksi' => 'Id Transaksi',
            'id_customer' => 'Id Customer',
            'id_mobil' => 'Id Mobil',
            'tgl_pinjam' => 'Tgl Pinjam',
            'tgl_kembali' => 'Tgl Kembali',
            'jam_pinjam' => 'Jam Pinjam',
            'jam_kembali' => 'Jam Kembali',
            'harga' => 'Harga',
            'denda' => 'Denda',
            'tanggal' => 'Tanggal',
            'status' => 'Status',
            'total' => 'Total',
        ];
        }
        public function getmobil()
        {
            return $this->hasOne(Mobil::className(), ['id_mobil' => 'id_mobil']);
        }
        public function getcustomer()
        {
        return $this->hasOne(Customer::className(), ['id_customer' => 'id_customer']);
        }
}
