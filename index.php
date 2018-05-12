<?php
use Silex\Application;
use Silex\Provider\TwigServiceProvider;
use Silex\Provider\DoctrineServiceProvider;
use Silex\Provider\FormServiceProvider;
use Silex\Provider\UrlGeneratorServiceProvider;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Doctrine\DBAL\Configuration;

date_default_timezone_set('America/Sao_Paulo');

require __DIR__ . '/vendor/autoload.php';

$app = new Application();

$app['debug'] = true;
$app->register(new Silex\Provider\SessionServiceProvider());

$app['session.storage.handler'] = null;

error_reporting(0);

ini_set('display_errors', true);

include "include/banco.inc.php";

$app['user.controller'] = function ($app) {
    return new User\UserController();
};

$app->after(function (Request $request, Response $response) {
  $response->headers->set('Access-Control-Allow-Origin', '*');
  $response->headers->set('Access-Control-Allow-Headers', 'Access-Control-Allow-Origin, Origin, X-Requested-With, Content-Type, Accept, Authorization');
});

$app->options("{anything}", function () {
  return new \Symfony\Component\HttpFoundation\JsonResponse(null, 204);
})->assert("anything", ".*");

$app->get('/', function(Application $app){
  return $app->redirect('/painelgmgothicpt/login');
});
$app->get('/login', function(Request $request) use ($app){
  $token = md5(uniqid());

  $session = $app['session'];
  if($session->has('username')){
    return $app->redirect('/painelgmgothicpt/home');
  }
  return $app['twig']->render('login.twig', array(
    'username' => $username,
    'password' => $password,
    'action' => '/painelgmgothicpt/verifica-login',
    'method' => 'post',
    'sessao' => $token,
    'cargo' => $cargo
  ));
})
->bind('login');

$app->post('/login', function(Request $request) use ($app){
  error_reporting(E_ALL);
  ini_set('display_errors', true);

  $data = json_decode($request->getContent(), true);
      
  $username = $data['username'];
  $password = $data['password'];
  $token = md5(uniqid());
  $params = $request->request->all();

 

  if ($username == null) {
        return $app->redirect('/painelgmgothicpt/login');
    }
  // $session->set('username', array('username' => $username));

  // $token = $data['sessao'];

  $sql = 'SELECT * FROM users WHERE username = :username AND password = :password';
  $post = $app['db']->fetchAssoc($sql, array('username' => $data['username'], 'password' => $data['password']));
  // $session->set('cargo', array('cargo' => $post['cargo']));
  // $session->set('nick', array('nick' => $post['nick']));
  // $session->set('permissao', array('permissao' => $post['permissao']));
  $sql1 = "UPDATE users SET token = :token WHERE username = :username";
  $stmt = $app['db']->prepare($sql1);
  $stmt->bindValue("token", $token);
  $stmt->bindValue("username", $data['username']);
  $stmt->execute();

  $sql2 = "SELECT activated FROM users WHERE username = :username";
  $activated = $app['db']->fetchAssoc($sql2, array('username' => $data['username']));

  // $session->set('token', array('token' => $post['token']));

  // if($post['username'] == $params['username']){
  //   return $app->redirect('/painelgmgothicpt/home?sessao=' . $post['token']);
  // }
  // else{
  //   $session->clear();
  //   exit;
  // }

  return $app->json(array(
    'dados' => $post,
    'activated' => $activated
    ),200);
})
->bind('verifica-login');

$app->post('/profile', function(Request $request) use ($app){
  $data = json_decode($request->getContent(), true);

  $updateDadosProfile = "UPDATE users SET nick = :nick, password = :password, nome = :nome  WHERE username = :username";
  $stmt = $app['db']->prepare($updateDadosProfile);
  $stmt->bindValue("password", $data['passwordNew']);
  $stmt->bindValue("nick", $data['nickNew']);
  $stmt->bindValue("nome", $data['name']);
  $stmt->bindValue("username", $data['username']);
  $stmt->execute();

  return true;
})
->bind('profile');

$app->get('/logout', function(Application $app){
  $session = $app['session'];
  $session->remove('username');
  return $app->redirect('/painelgmgothicpt/login');
})
->bind('logout');

$app->get('/invalido', function(Request $request) use ($app){

  return $app['twig']->render('invalido.twig');
})
->bind('invalido');

$app->get('/home', function(Request $request) use ($app){
  $data = json_decode($request->getContent(), true);
  $dataHoje = date("Y-d-m");
  
  $dataHojeMenosDez = date('Y-d-m', strtotime('-10 days'));
  
  $contasRegistradas = "select COUNT(userid) AS qtd from [accountdb].[dbo].[AllGameUser]";
  $stmt = $app['db']->prepare($contasRegistradas);
  $stmt->execute();

  $dadosContasRegistradas = $stmt->fetch(PDO::FETCH_ASSOC);

  $gmsRegistrados = "select COUNT(username) AS qtd from users";
  $stmt = $app['db']->prepare($gmsRegistrados);
  $stmt->execute();
  
  $dadosGmsRegistrados = $stmt->fetch(PDO::FETCH_ASSOC);

  $contasBanidas = "select COUNT(userid) AS qtd from [accountdb].[dbo].[AllGameUser] WHERE BlockChk = 1";
  $stmt = $app['db']->prepare($contasBanidas);
  $stmt->execute();
  
  $dadosContasBanidas = $stmt->fetch(PDO::FETCH_ASSOC);

  $ultimasContasRegistradas = "select COUNT(userid) AS qtd from [accountdb].[dbo].[AllGameUser] WHERE RegistDay = '$dataHoje' OR RegistDay >= CAST('$dataHojeMenosDez' AS DATETIME)";
  $stmt = $app['db']->prepare($ultimasContasRegistradas);
  $stmt->execute();

  $dadosUltimasContasRegistradas = $stmt->fetch(PDO::FETCH_ASSOC);

  $UltimasIdsRegistradas = "select userid AS uid, RegistDay AS rday from [accountdb].[dbo].[AllGameUser] WHERE RegistDay = '$dataHoje' OR RegistDay >= CAST('$dataHojeMenosDez' AS DATETIME)";
  $stmt = $app['db']->prepare($UltimasIdsRegistradas);
  $stmt->execute();

  $dadosUltimasIdsRegistradas = $stmt->fetchAll(PDO::FETCH_ASSOC);

  return $app->json(array(
    'contasRegistradas' => $dadosContasRegistradas['qtd'],
    'gmsRegistrados' => $dadosGmsRegistrados['qtd'],
    'contasBanidas' => $dadosContasBanidas['qtd'],
    'ultimasContasRegistradas' => $dadosUltimasContasRegistradas['qtd'],
    'dadosUltimasIdsRegistradas'=> $dadosUltimasIdsRegistradas)
  , 200);
})
->bind('home');

$app->get('/cadastrar-gm', function(Request $request) use ($app){
  $session = $app['session'];
  $username = $app['session']->get('username');
  $cargo = $app['session']->get('cargo');
  $nick = $app['session']->get('nick');
  $permissao = $app['session']->get('permissao');
  $params = $request->request->all();
  
  $UsuarioLogado = implode("", $username);

  if (null === $username  = $app['session']->get('username')) {
        return $app->redirect('login');
    }
  return $app['twig']->render('gerenciar-game-master/cadastrar-gm.twig', array(
    'sessao' => $params['sessao'],
    'username' => $UsuarioLogado,
    'cargo' => implode('', $cargo),
    'nick' => implode('', $nick),
    'permissao' => implode('', $permissao),
    'action' => '/painelgmgothicpt/register-gm-successfull',
    'method' => 'post',
    'title' => "GothicPT Administração | Cadastrar Game Master"
  ));
})
->bind('cadastrar-gm');

$app->get('/listar-gm', function(Request $request) use ($app){
  $session = $app['session'];
  $username = $app['session']->get('username');
  $cargo = $app['session']->get('cargo');
  $nick = $app['session']->get('nick');
  $permissao = $app['session']->get('permissao');
  $params = $request->request->all();
  
  $UsuarioLogado = implode("", $username);

  if (null === $username  = $app['session']->get('username')) {
        return $app->redirect('login');
    }
  return $app['twig']->render('gerenciar-game-master/listar-gm.twig', array(
    'sessao' => $params['sessao'],
    'username' => $UsuarioLogado,
    'cargo' => implode('', $cargo),
    'nick' => implode('', $nick),
    'permissao' => implode('', $permissao),
    'title' => "GothicPT Administração | Listar Game Master"
  ));
})
->bind('listar-gm');

$app->get('/banir-jogador', function(Request $request) use ($app){
  $session = $app['session'];
  $username = $app['session']->get('username');
  $cargo = $app['session']->get('cargo');
  $nick = $app['session']->get('nick');
  $permissao = $app['session']->get('permissao');
  $params = $request->request->all();
  
  $UsuarioLogado = implode("", $username);

  if (null === $username  = $app['session']->get('username')) {
        return $app->redirect('login');
    }
  return $app['twig']->render('gerenciar-players/banir-jogador.twig', array(
    'sessao' => $params['sessao'],
    'username' => $UsuarioLogado,
    'cargo' => implode('', $cargo),
    'nick' => implode('', $nick),
    'permissao' => implode('', $permissao),
    'title' => "GothicPT Administração | Banir Jogador"
  ));
})
->bind('banir-jogador');

$app->post('/register-gm-successfull', function(Request $request) use ($app){
  $data = json_decode($request->getContent(), true);

  $dataHoje = date("Y-m-d");

  $gmRegistradoSql = "select username from users WHERE username = :username";
  $dadosGmRegistrado = $app['db']->fetchAssoc($gmRegistradoSql, array('username' => $data['idGM']));

  if($dadosGmRegistrado){
    return false;
  }
  $app['db']->insert('users', array(
    'username' => $data['idGM'],
    'password' => $data['passwordGM'],
    'nick' => $data['nickGM'],
    'nome' => $data['nomeGM'],
    'cargo' => $data['cargoGM'],
    'permissao' => $data['permissaoGM'],
    'activated' => $data['activated'],
    'data' => $dataHoje,
    'cadPor' => $data['cadastradoPor'],
    'token' => md5(uniqid())
  ));

  return $app->json(array(
    'gmRegistrado' => $dadosGmRegistrado)
  , 200);
})
->bind('register-gm-successfull');

$app->post('/banir-jogador-success', function(Request $request) use ($app){
  $data = json_decode($request->getContent(), true);
      
  $username = $data['username'];

  if($data['tipoPunicao'] == 0){
    $punicaoNUM = 0;
    $punicaoTXT = "Alerta";
  }
  if($data['tipoPunicao'] == 1){
    $punicaoNUM = 1;
    $punicaoTXT = "Banido";
  }
  if($data['tipoPunicao'] == 2){
    $punicaoNUM = 0;
    $punicaoTXT = "Desbanido";
  }

  $datahoje = date("d/m/Y");

  $sql = "select * from [accountdb].[dbo].[".strtoupper($data[idPlayer][0])."GameUser] where userid = :userid";
  $post = $app['db']->fetchAssoc($sql, array('userid' => $data['idPlayer']));
  $stmt = $app['db']->prepare($sql);
  $stmt->bindValue("userid", $post['userid']);
  $stmt->execute();

 
  

  $dados = $stmt->fetch(PDO::FETCH_ASSOC);
  $sql1 = "update [accountdb].[dbo].[".strtoupper($data[idPlayer][0])."GameUser] set blockchk = $punicaoNUM where userid = :userid";
  $stmt = $app['db']->prepare($sql1);
  $stmt->bindValue("userid", $data['idPlayer']);
  $stmt->execute();
  $sql2 = "update [accountdb].[dbo].[AllGameUser] set blockchk = $punicaoNUM where userid = :userid";
  $stmt = $app['db']->prepare($sql2);
  $stmt->bindValue("userid", $data['idPlayer']);
  $stmt->execute();

  if($dados){
    $app['db']->insert('LogsBan', array(
      'idplayer' => $data['idPlayer'],
      'motivo' => $data['motivo'],
      'punicao' => $punicaoTXT,
      'dataDesban' => $data['dataDesban'],
      'banidoPor' => $data['banidoPor'],
      'data' => $datahoje
    ));
  }
  else{
    return false;
  }
   if($data['idPlayer'] == $post['userid']){
    return true;
  }
  else{
    exit;
  }
  

  return true;
})
->bind('banir-jogador-success');

$app->get('/procurar-jogador', function(Request $request) use ($app){
  $session = $app['session'];
  $username = $app['session']->get('username');
  $cargo = $app['session']->get('cargo');
  $nick = $app['session']->get('nick');
  $permissao = $app['session']->get('permissao');
  $params = $request->request->all();
  
  $UsuarioLogado = implode("", $username);

  if (null === $username  = $app['session']->get('username')) {
        return $app->redirect('login');
    }
  return $app['twig']->render('gerenciar-players/procurar-jogador.twig', array(
    'sessao' => $params['sessao'],
    'username' => $UsuarioLogado,
    'cargo' => implode('', $cargo),
    'nick' => implode('', $nick),
    'permissao' => implode('', $permissao),
    'title' => "GothicPT Administração | Listar Game Master"
  ));
})
->bind('procurar-jogador');

$app->post('/procurar-jogador-success', function(Request $request) use ($app){
  $data = json_decode($request->getContent(), true);      
  

  $sql = "SELECT apm.userid, apm.passwd, apm.email, apm.ip, AGU.BlockChk
  FROM [accountdb].[dbo].[ALLPersonalMember] as apm,
  [accountdb].[dbo].[AllGameUser] as AGU
  WHERE (apm.userid like :userid1
  OR apm.ip like :userid2
  OR apm.email like :userid3)
  AND AGU.userid = apm.Userid";

  $stmt = $app['db']->prepare($sql);
  $stmt->bindValue("userid1", '%'.$data['textSearchFor'].'%');
  $stmt->bindValue("userid2", '%'.$data['textSearchFor'].'%');
  $stmt->bindValue("userid3", '%'.$data['textSearchFor'].'%');
  $stmt->execute();

  $dados = $stmt->fetchAll(PDO::FETCH_ASSOC);
  
  if(count($dados) > 0){
    return $app->json($dados, 200);
  }
  else{
    return false;
  }
  return 1;
})
->bind('procurar-jogador-success');

$app->get('/logs', function(Request $request) use ($app){
  $session = $app['session'];
  $username = $app['session']->get('username');
  $cargo = $app['session']->get('cargo');
  $nick = $app['session']->get('nick');
  $permissao = $app['session']->get('permissao');
  $params = $request->request->all();
  
  $UsuarioLogado = implode("", $username);

  if (null === $username  = $app['session']->get('username')) {
        return $app->redirect('login');
    }
  return $app['twig']->render('gerenciar-logs/logs.twig', array(
    'sessao' => $params['sessao'],
    'username' => $UsuarioLogado,
    'cargo' => implode('', $cargo),
    'nick' => implode('', $nick),
    'permissao' => implode('', $permissao),
    'title' => "GothicPT Administração | Logs"
  ));
})
->bind('logs');

$app->post('/procurar-logs-success', function(Request $request) use ($app){
  $session = $app['session'];
  $username = $app['session']->get('username');
  $cargo = $app['session']->get('cargo');
  $nick = $app['session']->get('nick');
  $permissao = $app['session']->get('permissao');
  $params = $request->request->all();

  $UsuarioLogado = implode("", $username);
  $date = date_create($params['datepicker']);
  $params['datepicker'] = date_format($date, 'n-j');

  if($params['procurarPor'] == "LogAdmin"){
    $caminho = 'C:/Server/LogAdmin/(Admin)' . $params['datepicker'] . '.log';
  }
  else if($params['procurarPor'] == "LogDebug"){
    $caminho = 'C:/Server/LogDebug/' . $params['datepicker'] . '.log';
  }
  else if($params['procurarPor'] == "LogFile"){
    $caminho = 'C:/Server/LogFile/' . $params['datepicker'] . '.log';
  }
  else if($params['procurarPor'] == "LogItem"){
    $caminho = 'C:/Server/LogFile/(Item)' . $params['datepicker'] . '.log';
  }

  $arquivo = file($caminho);
  if($params['procurarPor'] == "LogAdmin"){
    foreach ($arquivo as $linha) {

      $result = preg_match_all("/\( [^)]* \)*/", $linha, $match);
    
      $accountName = str_replace(array('( ', ' )'), '', $match[0][0]);
      $nickName = str_replace(array('( ', ' )'), '', $match[0][1]);
      $ipAddress = str_replace(array('( ', ' )'), '', $match[0][2]);
      // Executa nossa expressão
    
      if (($params['SearchFor1'] == $accountName) || ($params['SearchFor1'] == $nickName) || ($params['SearchFor1'] == $ipAddress)) {
        return $app->json(array(
          "accountname" => $accountName,
          "nickname" => $nickName,
          "ipaddress" => $ipAddress
        ), 200);
    
      } 
      else{
        return false;
      }
      
      
    }
  }
  else if($params['procurarPor'] == "LogItem"){
    foreach ($arquivo as $linha) {

      $result = preg_match_all("/\( [^)]* \)*/", $linha, $match);
      echo "<pre>";
      print_r($match);
      exit;
      $name = str_replace(array('( ', ' )'), '', $match[0][0]);
      $level = str_replace(array('( ', ' )'), '', $match[0][1]);
      $item = str_replace(array('( ', ' )'), '', $match[0][2]);
      // Executa nossa expressão
     
      if (($params['SearchFor1'] == $name) || ($params['SearchFor1'] == $level) || ($params['SearchFor1'] == $item)) {
        return $app->json(array(
          "name" => $name,
          "level" => $level,
          "item" => $item
        ), 200);
    
      } 
      else{
        return false;
      }
      
      
    }
  
  }  
  if (null === $username  = $app['session']->get('username')) {
        return $app->redirect('login');
    }
  return false;
})
->bind('procurar-logs-success');

$app->get('/jogadores-punidos', function(Request $request) use ($app){
  $data = json_decode($request->getContent(), true);      

  $logsBan = "select * from LogsBan ORDER BY data DESC";
  $stmt = $app['db']->prepare($logsBan);
  $stmt->execute();

  $dados = $stmt->fetchAll(PDO::FETCH_ASSOC);

  return $app->json($dados, 200);
})
->bind('jogadores-punidos');

$app->get('/gms-cadastrados', function(Request $request) use ($app){
  $data = json_decode($request->getContent(), true);      

  $logsBan = "select username, nick, cargo, permissao, cadPor, activated, data from users";
  $stmt = $app['db']->prepare($logsBan);
  $stmt->execute();

  $dados = $stmt->fetchAll(PDO::FETCH_ASSOC);

  return $app->json($dados, 200);
})
->bind('gms-cadastrados');



$app->register(new Silex\Provider\TwigServiceProvider(), array(
	'twig.path' => __DIR__.'/views',
));
$app->run();