<?php

$app->register(new Silex\Provider\DoctrineServiceProvider(), array(
    'db.options' => array(
        'driver' => 'pdo_sqlsrv',
        'host' => 'DESKTOP-U6HOIFA\SQLEXPRESS',
        'dbname' => 'PainelGMGothicPTByArthur',
        'user' => 'sa',
        'password' => '78124770',
    ),
));

?>