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
        'valorUnitario' => $data['unitaryValue'],
        'codBarras' => $data['barCode']
      ));

      return true;
    }

    public function searchInfosProduct (\Silex\Application $app, \Symfony\Component\HttpFoundation\Request $request) {
      $data =  json_decode($request->getContent(), true);

      $searchCode = $data['searchCode'];

      $sql = 'SELECT * FROM product WHERE id = :cod';
      $post = $app['db']->fetchAssoc($sql, array('cod' => $searchCode));

      return $app->json(array(
        'productName' => $post['nome'],
        'barCode' => $post['codBarras'],
        'unitaryValue' => $post['valorUnitario']
      ), 200);
    }

    public function searchPurchaseRequest (\Silex\Application $app, \Symfony\Component\HttpFoundation\Request $request) {
      $data =  json_decode($request->getContent(), true);

      $searchCode = $data['searchCode'];

      $sql = 'SELECT * FROM request WHERE numeroPedido = :cod';
      $post = $app['db']->fetchAssoc($sql, array('cod' => $searchCode));

      return $app->json(array(
        'clientName' => $post['nomeCliente'],
        'cpfClient' => $post['cpfCliente'],
        'emailClient' => $post['emailCliente'],
        'productName' => $post['nomeProduto'],
        'unitaryValue' => $post['valorUnitario'],
        'barCode' => $post['codBarras'],
        'quantity' => $post['quantidade']
      ), 200);
    }

    public function editProduct (\Silex\Application $app, \Symfony\Component\HttpFoundation\Request $request) {
      $data =  json_decode($request->getContent(), true);
    
      $updateProduct = "UPDATE product SET nome = :nome, codBarras = :codBarras, valorUnitario = :valorUnitario WHERE id = :cod";
      $stmt = $app['db']->prepare($updateProduct);
      $stmt->bindValue("cod", $data['searchCode']);
      $stmt->bindValue("nome", $data['nome']);
      $stmt->bindValue("codBarras", $data['codBarras']);
      $stmt->bindValue("valorUnitario", $data['valorUnitario']);
      $stmt->execute();

      return true;
    }

    public function listProduct (\Silex\Application $app, \Symfony\Component\HttpFoundation\Request $request) {
      $sql = "select * from product";
      $post = $app['db']->fetchAll($sql);
    
      return $app->json($post, 200);
    }

    public function purchaseRequest (\Silex\Application $app, \Symfony\Component\HttpFoundation\Request $request) {
      $data = json_decode($request->getContent(), true);
      
      $sql = 'SELECT max(numeroPedido) as numeroUltimoPedido FROM request';
      $post = $app['db']->fetchAssoc($sql);

      $numeroPedido = $post['numeroUltimoPedido'] + 1;

      $app['db']->insert('request', array(
        'numeroPedido' => $numeroPedido,
        'nomeCliente' => $data['clientName'],
        'cpfCliente' => $data['cpfClient'],
        'emailCliente' => $data['emailClient'],
        'nomeProduto' => $data['productName'],
        'codBarras' => $data['barCode'],
        'valorUnitario' => $data['unitaryValue'],
        'quantidade' => $data['quantity'],
        'codBarras' => $data['barCode'],
        'dataPedido' => date('d/m/Y')
      ));

      return $app->json($post, 200);
    }

    public function listPurchaseRequests (\Silex\Application $app, \Symfony\Component\HttpFoundation\Request $request) {
      $sql = "select * from request";
      $post = $app['db']->fetchAll($sql);
    
      return $app->json($post, 200);
    }

    public function editPurchaseRequests (\Silex\Application $app, \Symfony\Component\HttpFoundation\Request $request) {
      $data =  json_decode($request->getContent(), true);
    
      $updateProduct = "UPDATE request 
                        SET    nomeCliente = :nome, 
                               cpfCliente = :cpfCliente, 
                               emailCliente = :emailCliente, 
                               nomeProduto = :nomeProduto, 
                               codBarras = :codBarras, 
                               valorUnitario = :valorUnitario, 
                               quantidade = :quantidade 
                        WHERE  numeroPedido = :cod";

      $stmt = $app['db']->prepare($updateProduct);
      $stmt->bindValue("cod", $data['searchCode']);
      $stmt->bindValue("nome", $data['nome']);
      $stmt->bindValue("cpfCliente", $data['cpfCliente']);
      $stmt->bindValue("emailCliente", $data['emailCliente']);
      $stmt->bindValue("nomeProduto", $data['nomeProduto']);
      $stmt->bindValue("codBarras", $data['codBarras']);
      $stmt->bindValue("valorUnitario", $data['valorUnitario']);
      $stmt->bindValue("quantidade", $data['quantidade']);
      $stmt->execute();

      return true;
    }

    public function deleteProduct (\Silex\Application $app, \Symfony\Component\HttpFoundation\Request $request) {
      $data =  json_decode($request->getContent(), true);

      $sql = "DELETE FROM product WHERE id = :cod";
      $stmt = $app['db']->prepare($sql);
      $stmt->bindValue("cod", $data['code']);
      $stmt->execute();

      return true;
    }
}
