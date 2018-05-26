<?php

$app->register(new Silex\Provider\DoctrineServiceProvider(), array(
    'db.options' => array(
        'driver' => 'pdo_sqlsrv',
        'host' => 'DESKTOP-O8DR1E7\SQLEXPRESS',
        'dbname' => 'PainelGMGothicPTByArthur',
        'user' => 'sa',
        'password' => '78124770',
    ),
));

?>