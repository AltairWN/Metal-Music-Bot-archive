<?
namespace HeavyBot;
use GuzzleHttp\Client;

class TelegramBot {
	private $apiKey;
	private $database;
	private $httpClient;

	private $requestOriginal;
	private $parsedRequest;
	private $url;

	private $command;
	private $chat_id;

	const API_URL = "https://api.telegram.org/bot";

	public function __construct() {
		$this->apiKey = Constants::TELEGRAM_KEY;
		$this->database = Database::getInstance();
		$this->httpClient = new Client();
		$this->url = self::API_URL.$this->apiKey."/";
	}

	public function parseRequest($request, $fromUser = true){
		$this->requestOriginal = $request;

		if($json = json_decode($request)){
			$this->parsedRequest = $json;
		} else {
			throw new \Exception("Not JSON");
		}

		$this->database->saveLog($request, "TG");
		$this->chat_id = $chat_id = $this->parsedRequest->message->chat->id;
		$this->database->saveTGUser($chat_id);

		$this->command = $this->parsedRequest->message->text;
	}

	public function getParsedRequest(){
		return $this->parsedRequest;
	}

	public function command(){
		if(strpos($this->command, "/start") === 0){
			return "start";
		} elseif (strpos($this->command, "/help") === 0) {
			return "help";
		} elseif (strpos($this->command, "/feedback") === 0) {
			return "feedback";
		} else {
			return "not command";
		}
	}

	public function comStart(){
		$this->sendResponse("Приветы, агась");
	}

	public function comHelp(){
		$this->sendResponse("Пока пилим. Будет позже ;)");
	}

	public function comFeedback(){
		$this->sendResponse("Да-да, это тоже будет");
	}

	public function sendAllUsers($text){
		$users = $this->database->getAllTGUsers();

		if(count($users)){
			foreach ($users as $user){
				$this->sendResponse($text);
			}
		}
	}

	private function sendResponse($text, $userID = 0, $method = "sendMessage"){

		if($userID){
			$chatID = $userID;
		} else {
			$chatID = $this->chat_id;
		}

		if($chatID){
			$data = [
				"method" => $method,
				"chat_id" => $chatID,
				"text" => $text
			];

			$this->httpClient->post($this->url, [
				"headers" => [
					"Content-Type" => "application/json"
				],
				"body" => json_encode($data)
			]);
		}
	}
}
