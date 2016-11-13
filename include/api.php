<?
require_once __DIR__ . "/defines.php";

class BotApi {

	const PUBLIC_VK_TOKEN = "5d6e50cfc835b7f7487c4408054dfb1a0f266d7c5a8a44ea438cade23ea146161dafe2257cb680d34453c";
	const API_VK_URL_METHOD = "https://api.vk.com/method/";

	private $vkVersionApi = "";

	private $availableCallback = [
		"message_new"
	];

	private $blockAPI = false;

	public $ERRORS = [];

	private $availableMethods = [
		"users.get"
	];

	private $vkPrevData = [];

	private $dataCallback = [];

	public function __construct($data, $versionAPI = "5.60") {
		$this->dataCallback = json_decode($data);
		$this->writeLog($this->dataCallback);

		if(!$this->checkCallback()){
			$this->blockAPI = true;
			return;
		}

		$this->vkVersionApi = $versionAPI;
	}


	private function checkCallback(){
		if(!in_array($this->dataCallback->type, $this->availableCallback)){
			$this->writeLog($this->dataCallback, "warnings");
			$this->dataCallback = [];
			return false;
		}
		return true;
	}

	/**
	 * Запись в лог-файл
	 * @param      $data
	 * @param bool $logfile
	 * @param bool $rewrite
	 */
	protected function writeLog($data, $logfile = false, $rewrite = false) {
		$logFileName = ($logfile) ? $logfile : "log";
		$overwrite = ($rewrite) ? FILE_APPEND : NULL;

		file_put_contents(__DIR__ . "/logs/{$logFileName}.txt", $data, $overwrite);
	}

	/**
	 * Смена версии API внутри класса
	 * @param float $version
	 *
	 * @return bool|string
	 */
	public function changeVersion($version) {
		if($this->blockAPI){
			return false;
		}

		if ( is_float($version) ) {
			$this->vkVersionApi = $version;

			return true;
		} else {
			$this->writeLog("Change Version API", "errors");
			$this->ERRORS[] = "Version not float";
		}
		return false;
	}

	/**
	 * Получение сохранненых данных из Callback
	 * @return array|mixed
	 */
	public function getData() {
		if($this->blockAPI){
			return false;
		}
		return $this->dataCallback;
	}

	/**
	 * @param string $method
	 * @param array  $additionParams
	 */
	public function getDataVK($method, $additionParams, $cacheTime = 60) {
		$prepareArray = serialize($additionParams);
		$savingResults = md5($method."|{$prepareArray}");

		if(array_key_exists($savingResults, $this->vkPrevData)){
			return $this->vkPrevData[$savingResults];
		}

		if(!$this->checkMethod($method)){
			$this->writeLog($method, "errors");
			return "Not available API method";
		}

	}

	/**
	 * Проверка доступности вызываемого метода
	 * @param string $method
	 *
	 * @return bool
	 */
	private function checkMethod($method){
		if($this->blockAPI){
			return false;
		}
		return in_array($method, $this->availableMethods);
	}

	/**
	 * Отправка ответа
	 */
	public function sendRequest() {
		return;
	}
}
