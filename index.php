<?php
use Silex\Application;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Doctrine\DBAL\Configuration;

error_reporting(E_ALL);
ini_set('display_errors', true);

date_default_timezone_set('America/Sao_Paulo');

require __DIR__ . '/vendor/autoload.php';

$app = new Application();

$app['debug'] = true;

require __DIR__ . '/include/banco.inc.php';

$app['user.controller'] = function ($app) {
    return new User\UserController();
};

$app->before(function (Request $request, Application $app) {
    $token = $request->headers->get('Token');
    $method = $request->getMethod();
    $route = $request->getPathInfo();
    
    $sql = "SELECT username FROM user WHERE token like :token";
    $app['user'] = $app['db']->fetchAssoc($sql, array('token' => $token));
  
    if (!$app['user'] && $method != 'OPTIONS' && $route != '/login') {
        return new \Symfony\Component\HttpFoundation\JsonResponse(null, 401);
      }
}, Application::EARLY_EVENT);
    
$app->after(function (Request $request, Response $response) {
    $response->headers->set('Access-Control-Allow-Origin', '*');
    $response->headers->set('Access-Control-Allow-Headers', 'Access-Control-Allow-Origin, Token, Origin, X-Requested-With, Content-Type, Accept, Authorization');
});

$app->options("{anything}", function () {
    return new \Symfony\Component\HttpFoundation\JsonResponse(null, 204);
})->assert("anything", ".*");

$app->post('/login', function(Request $request) use ($app){
    $app['user.controller']->autentica();
  })
->bind('login');

$app->run();
?>