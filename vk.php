<?require_once __DIR__."/heavybot/heavy_autoload.php";

use HeavyBot\VKHandler, HeavyBot\TelegramBot as Bot;

$json = file_get_contents('php://input');

$vk = new VKHandler();

$vk->parseRequest($json);
if($vk->isConfirm()){
	echo '9f73d52c';
} else {
	if($vk->getType() === "wall_post_new"){
		$bot = new Bot();
		$text = $vk->object->text;
		$text .= "\nСсылка: ";
		$bot->sendAllUsers($vk->object->text);
	}
}
