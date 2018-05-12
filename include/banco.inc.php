<?php

$app->register(new Silex\Provider\DoctrineServiceProvider(), array(
    'db.options' => array(
        'driver' => 'pdo_sqlsrv',
        'host' => 'DESKTOP-5HDO31A\SQLEXPRESS',
        'dbname' => 'PainelGMGothicPTByArthur',
        'user' => 'sa',
        'password' => '78124770',
    ),
));

?>