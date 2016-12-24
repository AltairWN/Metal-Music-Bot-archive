<? if ( !SETTINGS_INC ) {
	die();
}

class Cp1251ErrorExeption extends ErrorException {
	public function getUtfMessage() {
		return iconv('cp1251', 'utf-8', $this->getMessage());
	}
	function handleError($errno, $errstr, $errfile, $errline, array $errcontext){
		if (0 === error_reporting())
			return false;
		throw new self($errstr, 0, $errno, $errfile, $errline);
	}
}

class Sql {

	private $connection;

	public function __construct($test = false) {
		$this->connection = new PDO("mysql:dbname=u406901_mheavy;host=u406901.mysql.masterhost.ru", SQL_LOGIN, SQL_PASSWORD);
	}

	public function setNewBand($band, $tags, $edition = false, $country = false) {
		return true;
	}

	public function getBand($band) {
		$result = false;

		return $result;
	}

	public function writeToLog($data, $type) {
		return $this->writeToBaseLog($data, $type);
	}

	private function writeToBaseLog($log, $type) {
		if ( empty($log) ) {
			return false;
		}
		if ( is_array($log) ) {
			$log = serialize($log);
		}
		$sql = "INSERT INTO `logs` (`TEXT`, `TYPE`) VALUES ('$log', '$type')";
		return $this->connection->exec($sql);
	}

	protected function getBandsFromTags($tag) {
		$result = false;

		return $result;
	}

	public function getBands($withtags = false) {
		$sql = "SELECT
mmm_bands.BAND_NAME,
mmm_tags.TAG
FROM
mmm_bands
INNER JOIN mmm_bands_tags ON mmm_bands_tags.BAND = mmm_bands.ID
INNER JOIN mmm_tags ON mmm_bands_tags.TAG = mmm_tags.ID
ORDER BY
mmm_bands.BAND_NAME ASC";
		//$this->connection->exec($sql);
	}

	public function getEditionToBand($name) {
		return [];
	}

	public function getBandToEdition($edition) {
		return [];
	}

}
