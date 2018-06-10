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

define('PATHUPLOADUSERIMAGE', 'C:/xampp/htdocs/painelgmgothicpt/Upload/User/ImagemPerfil/');

date_default_timezone_set('America/Sao_Paulo');

require __DIR__ . '/vendor/autoload.php';

$app = new Application();

$app['debug'] = true;
$app->register(new Silex\Provider\SessionServiceProvider());

$app['session.storage.handler'] = null;

error_reporting(E_ALL);

ini_set('display_errors', true);

include "include/banco.inc.php";

$app['user.controller'] = function ($app) {
    return new User\UserController();
};

$app->before(function (Request $request, Application $app) {
  $token = $request->headers->get('Token');
  $method = $request->getMethod();
  $route = $request->getPathInfo();

  $sql = "SELECT username FROM users WHERE token = :token";
  $user = $app['db']->fetchAssoc($sql, array('token' => $token));

  if (!$user && $method != 'OPTIONS' && $route != '/login') {
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

$app->get('/', function(Application $app){
  return $app->redirect('/painelgmgothicpt/login');
});

$app->post('/login', function(Request $request) use ($app){
  error_reporting(E_ALL);
  ini_set('display_errors', true);

  $data = json_decode($request->getContent(), true);
  
  $username = $data['username'];
  $password = $data['password'];
  $token = md5(uniqid());
  $params = $request->request->all();

  $sql = 'SELECT * FROM users WHERE username = :username AND password = :password';
  $post = $app['db']->fetchAssoc($sql, array('username' => $data['username'], 'password' => $data['password']));
  
  $activated = 'SELECT activated FROM users WHERE username = :username';
  $postA = $app['db']->fetchAssoc($activated, array('username' => $data['username']));

  if($postA['activated'] != '0'){
    $sql1 = "UPDATE users SET token = :token WHERE username = :username";
    $stmt = $app['db']->prepare($sql1);
    $stmt->bindValue("token", $token);
    $stmt->bindValue("username", $data['username']);
    $stmt->execute();
  }

  $post['token'] = $token;

  return $app->json(array(
    'dados' => $post,
    'activated' => $postA['activated']
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

$app->post('/delete-game-master', function(Request $request) use ($app){
  $data = json_decode($request->getContent(), true);
  
  $excluidoEm = date("d-m-Y h:i:s A");
  $excluidoPor = $data['excluidoPor'];
  $username = $data['username'];
  $sql = "DELETE FROM users WHERE username = :username";
  $stmt = $app['db']->prepare($sql);
  $stmt->bindValue("username", $username);
  $stmt->execute();

  $app['db']->insert('LogsUsersDeletados', array(
    'username' => $username,
    'deletedAt' => $excluidoEm,
    'deletedBy' => $excluidoPor
  ));
  return true;
})
->bind('delete-game-master');

$app->post('/enviar-itens', function(Request $request) use ($app){
  $data = json_decode($request->getContent(), true);
  $nick = $data['nomeJogador'];
  $class = $data['classe'];
  $item = $data['item'];
  $qtdItens = $data['quantidade'];

  $ip = $_SERVER["REMOTE_ADDR"];
  $datahoje = date("d-m-Y h:i:s A");

  if($class == '0'){
    $classTXT = 'Sem Classe';
  }
  if($class == '1'){
    $classTXT = 'Lutador';
  }
  if($class == '2'){
    $classTXT = 'Mecânico';
  }
  if($class == '3'){
    $classTXT = 'Arqueira';
  }
  if($class == '4'){
    $classTXT = 'Pikeman';
  }
  if($class == '5'){
    $classTXT = 'Atalanta';
  }
  if($class == '6'){
    $classTXT = 'Cavaleiro';
  }
  if($class == '7'){
    $classTXT = 'Mago';
  }
  if($class == '8'){
    $classTXT = 'Priest';
  }
  $rootDir = 'C:/Server/';
  function subDiretorio($pasta) {
 	$total = 0;
	for($i=0;$i<strlen($pasta);$i++)
	{			
		$total += ord(strtoupper($pasta[$i]));
			if($total >= 256)
			{
				$total = $total - 256;
			}
		
	}
	return $total;
}
  $procuraPlayer = ''.$rootDir.'DataServer/userdata/'.subDiretorio($nick).'/'.$nick.'.dat';
  $procuraItem = ''.$rootDir.'GameServer/OpenItem/'.$item.'.txt';
		if(!file_exists($procuraPlayer)){
      return false;
      exit;
    }
    if(!file_exists($procuraItem)){
      return false;
      exit;
    }
    else{
    $aberto = fopen($procuraPlayer, "r");
    $conteudoDat =fread($aberto,filesize($procuraPlayer));
    @fclose($aberto);
    
    $procuraPlayer = ''.$rootDir.'DataServer/userdata/'.subDiretorio($nick).'/'.$nick.'.dat';
if(file_exists($procuraPlayer))
{

// l� o arquivo para descobrir a ID
$aberto = fopen($procuraPlayer, "r");
$conteudoDat =fread($aberto,filesize($procuraPlayer));
@fclose($aberto);

$PlayerID = trim(substr($conteudoDat,0x2c0,10),"\x00");
}
    //Dados do Item
$dados_item = "$nick $item  $class \"Obrigado por jogar GothicPT!!\"". "\r\n";

//Pasta de entrega
$pasta_entrega = "".$rootDir."PostBox/".subDiretorio($PlayerID)."/".$PlayerID.".dat";
//Enviando o Item para o Distribuidor
if (file_exists($pasta_entrega)) {
$fp = fopen($pasta_entrega, "a+");
//Escreve o pedido
for($i = 0; $i < $qtdItens; $i++){
  $escreve = fwrite($fp, "$dados_item");
}
// Fecha o arquivo
fclose($fp);
} else {
copy("shop.dat",$pasta_entrega);
$fp = fopen($pasta_entrega, "r+");
//Escreve o pedido
for($i = 0; $i < $qtdItens; $i++){
  $escreve = fwrite($fp, "$dados_item");
}
// Fecha o arquivo
fclose($fp);
}
}
  if($escreve){
    $app['db']->insert('LogsDistribuidor', array(
      'idGM' => $data['idGM'],
      'item' => $item,
      'classe' => $classTXT,
      'nick' => $nick,
      'idUser' => $PlayerID,
      'data' => $datahoje,
      'ip' => $ip
    ));
  }
  else{
    return false;
  }
  return true;
})
->bind('enviar-itens');

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
    'token' => md5(uniqid()),
    'photo' => 'default.jpg'
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

$app->post('/logs', function(Request $request) use ($app){
  $data = json_decode($request->getContent(), true);      

  $arr = [];
  $dataInicial = $data['dataProcurar'];

  if($data['logType'] == "LogAdmin"){
    $date = date_create($data['dataProcurar']);
    $data['dataProcurar'] = date_format($date, 'n-j');
    $caminho = 'C:/Server/LogAdmin/(Admin)' . $data['dataProcurar'] . '.log';
    if(!file_exists($caminho)){
      return false;
      exit;
    }
  }
  // else if($params['procurarPor'] == "LogDebug"){
  //   $caminho = 'C:/Server/LogDebug/' . $params['datepicker'] . '.log';
  // }
  // else if($params['procurarPor'] == "LogFile"){
  //   $caminho = 'C:/Server/LogFile/' . $params['datepicker'] . '.log';
  // }
  // else if($params['procurarPor'] == "LogItem"){
  //   $caminho = 'C:/Server/LogFile/(Item)' . $params['datepicker'] . '.log';
  // }

  $arquivo = file($caminho);
  if($data['logType'] == "LogAdmin"){
    foreach ($arquivo as $linha) {

      $logR = preg_match_all("/\/.+/", $linha, $match3);

      $dateLog = preg_match_all("/[0-9]{2}:[0-9]{2}:[0-9]{2}/", $linha, $match2);

      $result = preg_match_all("/\( [^)]* \)*/", $linha, $match);
    
      $accountName = str_replace(array('( ', ' )'), '', $match[0][0]);
      $nickName = str_replace(array('( ', ' )'), '', $match[0][1]);
      $ipAddress = str_replace(array('( ', ' )'), '', $match[0][2]);
      $dataLog2 = str_replace(array('( ', ' )'), '', $match2[0][0]);
      $log = str_replace(array('( ', ' )'), '', $match3[0][0]);

      // Executa nossa expressão
    
      if (($data['procurarPor2'] == $accountName) || ($data['procurarPor2'] == $nickName) || ($data['procurarPor2'] == $ipAddress)) {
        $arr[] = array(
            "accountname" => $accountName,
             "nickname" => $nickName,
             "ipaddress" => $ipAddress,
             "data" => $dataInicial . " " .$dataLog2,
             "log" => $log
            );
        // return $app->json(array(
        //   array(
        //   "accountname" => $accountName,
        //   "nickname" => $nickName,
        //   "ipaddress" => $ipAddress
        // )
        // ), 200);
    
      } 
      else{
        return false;
      }
      
      
    }
    return $app->json($arr);
  }
  // else if($params['procurarPor'] == "LogItem"){
  //   foreach ($arquivo as $linha) {

  //     $result = preg_match_all("/\( [^)]* \)*/", $linha, $match);
  //     echo "<pre>";
  //     print_r($match);
  //     exit;
  //     $name = str_replace(array('( ', ' )'), '', $match[0][0]);
  //     $level = str_replace(array('( ', ' )'), '', $match[0][1]);
  //     $item = str_replace(array('( ', ' )'), '', $match[0][2]);
  //     // Executa nossa expressão
     
  //     if (($params['SearchFor1'] == $name) || ($params['SearchFor1'] == $level) || ($params['SearchFor1'] == $item)) {
  //       return $app->json(array(
  //         "name" => $name,
  //         "level" => $level,
  //         "item" => $item
  //       ), 200);
    
  //     } 
  //     else{
  //       return false;
  //     }
      
      
  //   }
  
  // }  
  
  return true;
})
->bind('logs');

$app->post('/get-photo', function(Request $request) use ($app){
  $data = json_decode($request->getContent(), true);

  $sql = "SELECT photo FROM users WHERE username = :username";
  $photo = $app['db']->fetchAssoc($sql, array('username' => $data['username']));

  return $app->json($photo, 200);
})
->bind('get-photo');

$app->post('/upload-image', function(Request $request) use ($app){
  $data = json_decode($request->getContent(), true);

  $username = $_POST['username'];

  $_FILES["file"]["name"] = md5(uniqid()) . '-' . $_FILES["file"]["name"];
  $uploadfileuser = PATHUPLOADUSERIMAGE . $_FILES["file"]["name"];

  $photo = $_FILES["file"]["name"];

  if(($_FILES['file']['type'] == 'image/png') || ($_FILES['file']['type'] == 'image/jpeg')){
  }
  else{
    return false;
    exit;
  }
  if ($_FILES['file']['error'] == UPLOAD_ERR_OK) {
    $tmp_name = $_FILES['file']["tmp_name"];;
    move_uploaded_file($tmp_name, $uploadfileuser);
    
    $updatePhoto = "UPDATE users SET photo = :photo WHERE username = :username";
    $stmt = $app['db']->prepare($updatePhoto);
    $stmt->bindValue("photo", $photo);
    $stmt->bindValue("username", $username);
    $stmt->execute();
  }
  else {
    echo 'Erro ao enviar imagem!';
    exit;
  }
  return true;
})
->bind('upload-image');

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

  // echo "<pre>";
  // print_r($data);
  // exit;
  $logsBan = "select username, nick, cargo, permissao, cadPor, activated, data, photo from users order by data desc";
  $stmt = $app['db']->prepare($logsBan);
  $stmt->execute();

  $dados = $stmt->fetchAll(PDO::FETCH_ASSOC);

  return $app->json($dados, 200);
})
->bind('gms-cadastrados');

$app->post('/edit-gm', function(Request $request) use ($app){
  $data = json_decode($request->getContent(), true);      

  return true;
  // $logsBan = "select username, nick, cargo, permissao, cadPor, activated, data from users order by data desc";
  // $stmt = $app['db']->prepare($logsBan);
  // $stmt->execute();

  // $dados = $stmt->fetchAll(PDO::FETCH_ASSOC);

  // return $app->json($dados, 200);
})
->bind('get-data-gm');

$app->post('/remove-token', function(Request $request) use ($app){
  $data = json_decode($request->getContent(), true);
  
  $updateToken0 = "UPDATE users SET token = 0 WHERE token = :token";
  $stmt = $app['db']->prepare($updateToken0);
  $stmt->bindValue("token", $data['token']);
  $stmt->execute();
  return true;
})
->bind('remove-token');


$app->register(new Silex\Provider\TwigServiceProvider(), array(
	'twig.path' => __DIR__.'/views',
));
$app->run();