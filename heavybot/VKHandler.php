<?
namespace HeavyBot;

class VKHandler {
	private $vkKey;
	private $database;

	private $requestOriginal;
	public $parsedRequest;

	public function __construct() {
		if(empty(trim(Constants::VK_PUBLIC_KEY))){
			throw new \Exception("Empty Secret Key");
		} else {
			$this->vkKey = Constants::VK_PUBLIC_KEY;
			$this->database = Database::getInstance();
		}
	}

	public function parseRequest($request){
		$this->requestOriginal = $request;

		if($json = json_decode($request)){
			$this->parsedRequest = $json;
		} else {
			throw new \Exception("Not JSON");
		}

		$this->database->saveLog($request, "VK");

		if($this->parsedRequest->secret !== $this->vkKey){
			throw new \Exception("Not Valid Secret Key");
		}

	}

	public function isConfirm(){
		return $this->parsedRequest->type === "confirmation";
	}

	public function getType(){
		return $this->parsedRequest->type;
	}

	private function requestVK($method, $params){

	}

	public function buildURLPost(){

	}

	public function __isset($name) {
		return;
	}

	public function __set($name, $value) {
		return;
	}

	public function __get($value){
		return $this->parsedRequest->{$value};
	}
}
