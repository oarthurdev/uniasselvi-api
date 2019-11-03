<?php
use Silex\Application;
use Symfony\Component\HttpFoundation\Request;

namespace Product;

class ProductController {
    function __construct () {

    }

    public function createProduct (\Silex\Application $app, \Symfony\Component\HttpFoundation\Request $request) {
      $data = json_decode($request->getContent(), true);
      
      $app['db']->insert('product', array(
        'nome' => $data['nomeProduto'],
        'codBarras' => $data['barCode'],
        'valorUnitario' => $data['unitaryValue']
      ));

      return true;
    }
}
