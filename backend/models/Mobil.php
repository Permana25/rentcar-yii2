<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "mobil".
 *
 * @property int $id_mobil
 * @property string $merk
 * @property string $no_plat
 * @property string $warna
 * @property int $tahun
 * @property string $status
 *
 * @property Transaksi[] $transaksis
 */
class Mobil extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'mobil';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['merk', 'no_plat', 'warna', 'tahun', 'status'], 'required'],
            [['tahun'], 'integer'],
            [['foto'], 'safe'],
            [['merk', 'no_plat', 'warna', 'status'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_mobil' => 'Id Mobil',
            'merk' => 'Merk',
            'no_plat' => 'No Plat',
            'warna' => 'Warna',
            'tahun' => 'Tahun',
            'status' => 'Status',
            'foto' => 'Foto',
        ];
    }

    /**
     * Gets query for [[Transaksis]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTransaksis()
    {
        return $this->hasMany(Transaksi::className(), ['tr_mobil' => 'id_mobil']);
    }

    public function beforeSave($insert)
    {
          if (parent::beforeSave($insert)) {
            if (!empty($this->foto)) {
                if(!empty($this->foto->baseName) ) {
                    $filename = time() . "_" . str_replace(" ", "_", $this->foto->baseName . '.' . $this->foto->extension);
                    $this->foto->saveAs('upload/' . $filename);
                    $this->foto = $filename;
                }
                
            } else {
                    # code...
                    $id_mobil = $this->id_mobil;
                    $penjualan_pengiriman = Mobil::findOne($id_mobil);
                    $this->foto = $penjualan_pengiriman->foto;
            }
            return true;
        }
    }
}
