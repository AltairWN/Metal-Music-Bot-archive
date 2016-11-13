<?
require_once __DIR__ . "/defines.php";

class BotApi {

	const PUBLIC_VK_TOKEN = "5d6e50cfc835b7f7487c4408054dfb1a0f266d7c5a8a44ea438cade23ea146161dafe2257cb680d34453c";
	const API_VK_URL_METHOD = "https://api.vk.com/method/";

	private $vkVersionApi = "";

	private $availableCallback = [
		"message_new"
	];

	private $availableRequest = [
		""
	];

	private $vkPrevData = [];

	private $dataCallback = [];

	public function __construct($data, $versionAPI = "5.60") {
		$this->dataCallback = json_decode($data);
		$this->vkVersionApi = $versionAPI;
		$this->writeLog($this->dataCallback);
	}

	/**
	 * @param      $data
	 * @param bool $logfile
	 * @param bool $rewrite
	 */
	private function writeLog($data, $logfile = false, $rewrite = false) {
		$logFileName = ($logfile) ? $logfile : "log";
		$overwrite = ($rewrite) ? FILE_APPEND : NULL;

		file_put_contents(__DIR__ . "/logs/{$logFileName}.txt", $data, $overwrite);
	}

	/**
	 * @param float $version
	 *
	 * @return bool|string
	 */
	public function changeVersion($version) {
		if ( is_float($version) ) {
			$this->vkVersionApi = $version;

			return true;
		} else {
			$this->writeLog("Change Version API", "errors");

			return "Version not float";
		}
	}

	public function getData() {
		return $this->dataCallback;
	}

	/**
	 * @param string $method
	 * @param array  $additionParams
	 */
	public function getDataVK($method, $additionParams) {
		return;
	}

	public function sendRequest() {
		return;
	}
}
