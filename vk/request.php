<?
if ( !isset($_REQUEST) ) {
	return;
}

require_once __DIR__."/../include/api.php";

$api = new BotApi(file_get_contents('php://input'));

$user_id = $api->getData()->object->user_id;

$user_info = json_decode(file_get_contents("https://api.vk.com/method/users.get?user_ids={$user_id}&v=5.60"));

$user_name = $user_info->response[0]->first_name;

$request_params = [
	'message'      => "Привет, {$user_name}!",
	'user_id'      => $user_id,
	'random_id'    => mt_rand(20, 22222222),
	'access_token' => $token,
	'v'            => '5.60',
];

$get_params = http_build_query($request_params);

file_get_contents('https://api.vk.com/method/messages.send?' . $get_params);

//Возвращаем "ok" серверу Callback API
echo('ok');
