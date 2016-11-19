<?
require_once __DIR__."/settings/defines.php";
require_once __DIR__."/Sql.class.php";
require_once __DIR__."/Caching.class.php";

class BotApi {

	private $PUBLIC_VK_TOKEN = VK_GROUP_API_KEY;
	const API_VK_URL_METHOD = "https://api.vk.com/method/";

	private $vkVersionApi = "";

	private $availableCallback = [
		"message_new"
	];

	private $botAsk = [
		"Привет, бот!"
	];

	private $blockAPI = false;

	public $ERRORS = [];

	private $availableMethods = [
		"users.get",
	  "messages.send"
	];

	private $vkPrevData = [];

	private $dataCallback = [];

	private $sqlConnect;

	public function __construct($data, $versionAPI = "5.60") {
		$this->dataCallback = json_decode($data);
		$this->writeLog($this->dataCallback);

		if(!$this->checkCallback()){
			$this->blockAPI = true;
			return;
		}

		$this->vkVersionApi = $versionAPI;
		$this->connect();

		$this->sqlConnect = new Sql();
	}

	private function connect(){
		$this->sqlConnect = new PDO();
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
	public function callVK($method, $additionParams, $secure = false, $notDecode = false, $cacheTime = 60) {
		$prepareArray = serialize($additionParams);
		$savingResults = md5($method."|{$prepareArray}");

		if(array_key_exists($savingResults, $this->vkPrevData)){
			return $this->vkPrevData[$savingResults];
		}

		if(!$this->checkMethod($method)){
			$this->writeLog($method, "errors");
			$this->ERRORS[] = "Not available API method";
			return false;
		}

		if(!is_bool($notDecode)){
			$this->ERRORS[] = "Not bool decode.";
			return false;
		}

		$params = $additionParams;
		if($secure){
			$params['access_token'] = $this->PUBLIC_VK_TOKEN;
		}
		$params['v'] = $this->vkVersionApi;

		$prepareParams = http_build_query($params);

		$request = self::API_VK_URL_METHOD.$method."?".$prepareParams;

		$VKdata = $this->sendRequest($request, $notDecode);

		$this->vkPrevData[$savingResults] = $VKdata;

		return $VKdata;
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
	protected function sendRequest($request, $withoutDecode = false) {
		$res = file_get_contents($request);
		if(!$withoutDecode){
			$res = json_decode($res);
		}

		return $res;
	}
}
