<?require_once __DIR__."/heavybot/heavy_autoload.php";
use HeavyBot\Database;
//function regHandler($cert, $token, $murl)
//{
//	$url = "https://api.telegram.org/bot" . $token . "/setWebhook";
//	$ch = curl_init();
//	$optArray = array(
//		CURLOPT_URL => $url,
//		CURLOPT_POST => true,
//		CURLOPT_RETURNTRANSFER => true,
//		CURLOPT_POSTFIELDS => array('url' => $murl, 'certificate' => '@' . realpath($cert))
//	);
//	curl_setopt_array($ch, $optArray);
//
//	$result = curl_exec($ch);
//	echo "<pre>";
//	print_r(json_decode($result, true));
//	echo "</pre>";
//	curl_close($ch);
//}
//
//$token = '420814619:AAFRAE34yD68_5zTGiUhVYczcZ7vQygCJl0';
//$path = __DIR__.'/heavy_cert.pem';
//$handlerurl = 'https://heavy.altair4713.ru/telegram.php';
//
//regHandler($path, $token, $handlerurl);

$sql = Database::getInstance();
$users = $sql->getAllTGUsers();

var_dump($users);
