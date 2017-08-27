<?
require_once __DIR__ . "/heavybot/heavy_autoload.php";

use HeavyBot\TelegramBot as Api;

if ( count($_REQUEST) ) {
	return;
}

$telegram = new Api();

$telegram->parseRequest(file_get_contents('php://input'));
$command = $telegram->command();


if ( $command === "start" ) {
	$telegram->comStart();
} elseif ($command === "help") {
	$telegram->comHelp();
} elseif ($command === "feedback") {
	$telegram->comFeedback();
}
