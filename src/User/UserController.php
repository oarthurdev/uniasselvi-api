<?php
use Silex\Application;
use Symfony\Component\HttpFoundation\Request;

namespace User;

class UserController {
    function __construct () {

    }

    public function autentica (\Silex\Application $app, \Symfony\Component\HttpFoundation\Request $request) {
      $data = json_decode($request->getContent(), true);
  
      $username = $data['username'];
      $password = $data['password'];
      
      $token = md5(uniqid());

      $sql = 'SELECT * FROM user WHERE username = :username AND password = :password';
      $post = $app['db']->fetchAssoc($sql, array('username' => $data['username'], 'password' => $data['password']));

      $sql1 = "UPDATE user SET token = :token WHERE username = :username";
      $stmt = $app['db']->prepare($sql1);
      $stmt->bindValue("token", $token);
      $stmt->bindValue("username", $data['username']);
      $stmt->execute();
      
      $post['token'] = $token;

      return $app->json(array(
        'dados' => $post
        ),200);
    }

    public function createUser (\Silex\Application $app, \Symfony\Component\HttpFoundation\Request $request) {
      $data = json_decode($request->getContent(), true);
      
      
      $dataHoje = date("Y-m-d");

      $jaExisteSql = "select username from user WHERE username = :username";
      $jaExiste = $app['db']->fetchAssoc($jaExisteSql, array('username' => $data['username']));

      if($jaExiste){
        return false;
      }
      
      $app['db']->insert('user', array(
        'username' => $data['username'],
        'password' => $data['password'],
        'nome' => $data['name'],
        'email' => $data['email'],
        'cpf' => $data['cpf'],
        'token' => 0
      ));

      return $app->json(array(
          'jaExiste' => $jaExiste)
        , 200);
      }

    public function searchInfosOfUser (\Silex\Application $app, \Symfony\Component\HttpFoundation\Request $request) {
      $data =  json_decode($request->getContent(), true);

      $searchCode = $data['searchCode'];

      $sql = 'SELECT *  FROM user WHERE id = :id';
      $post = $app['db']->fetchAssoc($sql, array('id' => $searchCode));

      return $app->json(array(
        'codigo' => $post['id'],
        'username' => $post['username'],
        'password' => $post['password'],
        'name' => $post['nome'],
        'cpf' => $post['cpf'],
        'email' => $post['email']
      ), 200);
    }
    
    public function editUser (\Silex\Application $app, \Symfony\Component\HttpFoundation\Request $request) {
      $data =  json_decode($request->getContent(), true);

      $updateUser = "UPDATE user SET username = :username, password = :password, nome = :nome, cpf = :cpf, email = :email WHERE id = :cod";
      $stmt = $app['db']->prepare($updateUser);
      $stmt->bindValue("cod", $data['searchCode']);
      $stmt->bindValue("username", $data['username']);
      $stmt->bindValue("password", $data['password']);
      $stmt->bindValue("nome", $data['name']);
      $stmt->bindValue("email", $data['email']);
      $stmt->bindValue("cpf", $data['cpf']);
      $stmt->execute();

      return true;
    }
    
    public function listUser (\Silex\Application $app, \Symfony\Component\HttpFoundation\Request $request) {
      $sql = "select * from user";
      $post = $app['db']->fetchAll($sql);
    
      return $app->json($post, 200);
    }

    public function deleteUser (\Silex\Application $app, \Symfony\Component\HttpFoundation\Request $request) {
      $data =  json_decode($request->getContent(), true);

      $sql = "DELETE FROM user WHERE id = :cod";
      $stmt = $app['db']->prepare($sql);
      $stmt->bindValue("cod", $data['code']);
      $stmt->execute();

      return true;
    }
}
