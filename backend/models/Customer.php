<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "customer".
 *
 * @property int $id_customer
 * @property string $nama
 * @property string $alamat
 * @property string $jenis_kelamin
 * @property int $no_telp
 * @property int $no_ktp
 *
 * @property Transaksi[] $transaksis
 */
class Customer extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'customer';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nama', 'alamat', 'jenis_kelamin', 'no_telp', 'no_ktp'], 'required'],
            [['no_telp', 'no_ktp'], 'integer'],
            [['nama', 'alamat', 'jenis_kelamin'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_customer' => 'Id Customer',
            'nama' => 'Nama',
            'alamat' => 'Alamat',
            'jenis_kelamin' => 'Jenis Kelamin',
            'no_telp' => 'No Telp',
            'no_ktp' => 'No Ktp',
            'foto' => 'foto',
        ];
    }

    /**
     * Gets query for [[Transaksis]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTransaksis()
    {
        return $this->hasMany(Transaksi::className(), ['tr_customer' => 'id_customer']);
    }
    public function beforeSave($insert)
    {
          if (parent::beforeSave($insert)) {
            if (!empty($this->foto)) {
                $id_customer = $this->id_customer;
                $customer = Customer::findOne($id_customer);
                if($customer->foto ?? '' != $this->foto) {
                    $filename = time() . "_" . str_replace(" ", "_", $this->foto->baseName) . '.' . $this->foto->extension;
                    $this->foto->saveAs('upload/' . $filename);
                    $this->foto = $filename;
                }
            } else {
                    # code...
                    $id_customer = $this->id_customer;
                    $penjualan_pengiriman = Mobil::findOne($id_customer);
                    $this->foto = $penjualan_pengiriman->foto;
            }
            return true;
        }
    }
}
