<?
require_once __DIR__."/api.php";

class vkApi extends BotApi{
	private $PUBLIC_VK_TOKEN = "5d6e50cfc835b7f7487c4408054dfb1a0f266d7c5a8a44ea438cade23ea146161dafe2257cb680d34453c";
	const API_VK_URL_METHOD = "https://api.vk.com/method/";
	
	private $vkVersionApi = "";

	private $availableCallback = [
		"message_new"
	];
	
	private $availableMethods = [
		"users.get",
	  "messages.send"
	];

	private $vkPrevData = [];

	private $dataCallback = [];
	
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
}
