<?php
$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

function ribuan($string)
{
    if ($string > 0) {
        return number_format($string, 0, ",", ".");
    } else {
        return 0;
    }
}

function tanggal_indo($tanggal, $cetak_hari = false)
{
    $hari = array(
        1 =>    'Senin',
        'Selasa',
        'Rabu',
        'Kamis',
        'Jumat',
        'Sabtu',
        'Minggu'
    );

    $bulan = array(
        1 =>   'Januari',
        'Februari',
        'Maret',
        'April',
        'Mei',
        'Juni',
        'Juli',
        'Agustus',
        'September',
        'Oktober',
        'November',
        'Desember'
    );
    $split    = explode('-', $tanggal);
    $tgl_indo = $split[2] . ' ' . $bulan[(int) $split[1]] . ' ' . $split[0];

    if ($cetak_hari) {
        $num = date('N', strtotime($tanggal));
        return $hari[$num] . ', ' . $tgl_indo;
    }
    return $tgl_indo;
}

function tanggal_indo2($str)
{
    $tr = trim($str);
    $str = str_replace(
        array('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'),
        array('Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jum\'at', 'Sabtu', 'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'),
        $tr
    );
    return $str;
}

function mysql2phpdatelong($date)
{
    $mysqldate = strtotime($date);
    $phpdate = date('d F Y', $mysqldate);
    if ($phpdate != "01-01-1970") {
        return $phpdate;
    } else {
        return " - ";
    }
}

return [
    'id' => 'app-backend',
    'name' => 'GSS Rental',
    'timeZone' => 'Asia/Jakarta',
    //'language' => 'id',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    //'bootstrap' => ['gii'],
    'bootstrap' => ['debug'],
    'modules' => [
        'gii' => [
            'class' => 'yii\gii\Module',
            'allowedIPs' => ['127.0.0.1', '::1', '192.168.1.*', '36.72.210.17', '182.253.8.3']
        ],
        'gridview' =>  [
            'class' => '\kartik\grid\Module'

        ],
        'debug' => [
            'class' => 'yii\debug\Module',
            'allowedIPs' => ['127.0.0.1', '::1']
        ]
    ],
    'components' => [
        'request' => [
            'csrfParam' => '_csrf-backend',
        ],
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=localhost;dbname=rental2',
            'username' => 'root',
            'password' => '',
            'charset' => 'utf8',
        ],
        'user' => [
            'identityClass' => 'backend\models\Login',
            'enableAutoLogin' => false,
            'identityCookie' => ['name' => '_identity-backend', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the backend
            'name' => 'advanced-backend',
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                //if logs need to save in files                
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning', 'info'],
                    'categories' => ['application'],
                    'logVars' => ['_POST', '_GET'],
                ],

                // if logs need to save in database. You need to create a db table as well.
                [
                    'class' => 'yii\log\DbTarget',
                    'prefix' => function ($message) {
                        $user = Yii::$app->user->identity->nama;
                        return $user;
                    },
                    'levels' => ['info'],
                    'categories' => ['yii\db\Command::execute'], // all database queries
                    'except' => ['application'], // appilcation buang
                    'logVars' => [],

                ],

                //if logs need to send email
                [
                    'class' => 'yii\log\EmailTarget',
                    'levels' => ['error'],
                    'categories' => ['yii\db\*'], // all database queries
                    'message' => [
                        'from' => ['log@example.com'],
                        'to' => ['admin@example.com', 'developer@example.com'],
                        'subject' => 'Database errors at example.com',
                    ],
                ],
            ],
        ],
        'errorHandler' => [
            // use 'site/error' action to display errors
            'errorAction' => YII_DEBUG ? null : 'site/error',
        ],
        'assetManager' => [
            'bundles' => [
                'dmstr\web\AdminLteAsset' => [
                    //'skin' => 'skin-red',
                ],
            ],
        ],
        'formatter' => [

            'dateFormat' => 'dd-MM-yyyy',
            'decimalSeparator' => ',',
            'thousandSeparator' => '.',
            'currencyCode' => 'Rp',
            'class'           => 'yii\i18n\Formatter',
            'defaultTimeZone' => 'Asia/Jakarta',
        ],


        /*
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
            ],
        ],
        */
    ],
    'params' => $params,
];
