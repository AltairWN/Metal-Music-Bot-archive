<?

class Sql {

	private $connection;

	public function __construct() {
		$this->connection = new PDO("mysql:host=".SQL_HOST.";dbname=".SQL_DATABASE, SQL_LOGIN, SQL_PASSWORD);
	}

}
