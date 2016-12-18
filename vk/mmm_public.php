<?require_once $_SERVER["DOCUMENT_ROOT"].'/vk/sentry-php-master/lib/Raven/Autoloader.php';
Raven_Autoloader::register();
$client = new Raven_Client('https://73aecbbf1f5148d6bbfe1b7875982da5:6894bc23861b43c3ac0fc525e2fe6dbc@sentry.io/114177');
$error_handler = new Raven_ErrorHandler($client);
$error_handler->registerExceptionHandler();
$error_handler->registerErrorHandler();
$error_handler->registerShutdownFunction();

if ( !isset($_REQUEST) ) {
	return;
}

require_once __DIR__."/../include/api.php";

$api = new BotApi(file_get_contents('php://input'), 5.60, true);

if($api->isConfirm()){
	echo('ok');
}
