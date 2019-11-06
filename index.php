<?php
use Silex\Application;
use Silex\Provider\TwigServiceProvider;
use Silex\Provider\DoctrineServiceProvider;
use Silex\Provider\FormServiceProvider;
use Silex\Provider\UrlGeneratorServiceProvider;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Doctrine\DBAL\Configuration;
use Symfony\Component\HttpFoundation\File\UploadedFile;

date_default_timezone_set('America/Sao_Paulo');

require __DIR__ . '/vendor/autoload.php';

$app = new Application();

$app['debug'] = true;

error_reporting(E_ALL);
ini_set('display_errors', true);

include "include/banco.inc.php";

$app['user.controller'] = function ($app) {
    return new User\UserController();
};

$app['product.controller'] = function ($app) {
  return new Product\ProductController();
};

$app->before(function (Request $request, Application $app) {
  $token = $request->headers->get('Token');
  $method = $request->getMethod();
  $route = $request->getPathInfo();

  $sql = "SELECT username FROM user WHERE token like :token";
  $app['user'] = $app['db']->fetchAssoc($sql, array('token' => $token));

  if (!$app['user']['username'] && $method != 'OPTIONS' && $route != '/login') {
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
  return $app['user.controller']->autentica($app, $request);
})
->bind('login');

$app->post('/user/create', function(Request $request) use ($app){
  return $app['user.controller']->createUser($app, $request);
})
->bind('create-user');

$app->post('/user/search', function(Request $request) use ($app){
  return $app['user.controller']->searchInfosOfUser($app, $request);
})
->bind('search-user');

$app->post('/user/edit', function(Request $request) use ($app){
  return $app['user.controller']->editUser($app, $request);
})
->bind('edit-user');

$app->post('/user/delete', function(Request $request) use ($app){
  return $app['user.controller']->deleteUser($app, $request);
})
->bind('delete-user');

$app->get('/user/list', function(Request $request) use ($app){
  return $app['user.controller']->listUser($app, $request);
})
->bind('user-list');

$app->post('/product/create', function(Request $request) use ($app){
  return $app['product.controller']->createProduct($app, $request);
})
->bind('create-product');

$app->post('/product/search', function(Request $request) use ($app){
  return $app['product.controller']->searchInfosProduct($app, $request);
})
->bind('search-product');

$app->post('/product/edit', function(Request $request) use ($app){
  return $app['product.controller']->editProduct($app, $request);
})
->bind('edit-product');

$app->get('/product/purchase/list', function(Request $request) use ($app){
  return $app['product.controller']->listPurchaseRequests($app, $request);
})
->bind('list-purchase-request');

$app->post('/product/purchase/request', function(Request $request) use ($app){
  return $app['product.controller']->purchaseRequest($app, $request);
})
->bind('purchase-request');

$app->post('/product/purchase/search', function(Request $request) use ($app){
  return $app['product.controller']->searchPurchaseRequest($app, $request);
})
->bind('purchase-request');

$app->post('/product/purchase/edit', function(Request $request) use ($app){
  return $app['product.controller']->editPurchaseRequest($app, $request);
})
->bind('edit-purchase-request');

$app->get('/product/list', function(Request $request) use ($app){
  return $app['product.controller']->listProduct($app, $request);
})
->bind('product-list');

$app->post('/product/delete', function(Request $request) use ($app){
  return $app['product.controller']->deleteProduct($app, $request);
})
->bind('delete-product');

$app->post('/remove-token', function(Request $request) use ($app){
  $data = json_decode($request->getContent(), true);
  
  $updateToken0 = "UPDATE user SET token = 0 WHERE token = :token";
  $stmt = $app['db']->prepare($updateToken0);
  $stmt->bindValue("token", $data['token']);
  $stmt->execute();
  return true;
})
->bind('remove-token');

$app->run();