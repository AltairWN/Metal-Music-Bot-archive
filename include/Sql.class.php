<?if(!SETTINGS_INC){
	die();
}

class Sql {

	private $connection;

	public function __construct($test = false) {
		if($test){
			$this->connection = new PDO("mysql:host=" . SQL_HOST . ";dbname=" . SQL_DATABASE_MMM, SQL_LOGIN, SQL_PASSWORD);
		} else {
			$this->connection = new PDO("mysql:host=" . SQL_HOST . ";dbname=" . SQL_DATABASE, SQL_LOGIN, SQL_PASSWORD);
		}
	}

	public function setNewBand($band, $tags, $edition = false, $country = false){
		return true;
	}

	public function getBand($band){
		$result = false;
		return $result;
	}

	public function writeToLog($data){
		return $this->writeToBaseLog($data);
	}

	private function writeToBaseLog($log){
		if(empty($log)){
			return false;
		}
		if(is_array($log)){
			$log = serialize($log);
		}
		$sql = "INSERT INTO logs (`LOG`) VALUES (`$log`)";
		return $this->connection->prepare($sql)->execute();
	}

	protected function getBandsFromTags($tag){
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
";
		//$this->connection->exec($sql);
	}

	public function getEditionToBand($name){
		return array();
	}

	public function getBandToEdition($edition){
		return array();
	}

}
