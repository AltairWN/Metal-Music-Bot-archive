<?

namespace HeavyBot;

use Medoo\Medoo as DataManager;


class Database {
	private static $_connection = NULL;
	private static $sql;

	protected function __clone() {
		// ограничивает клонирование объекта
	}

	static public function getInstance($typeConnection = "main") {
		if ( is_null(self::$_connection) ) {
			self::$_connection = new self($typeConnection = "main");
		}

		return self::$_connection;
	}

	private function __construct($typeConnection = "main") {
		if ( Constants::DATABASE_DATE[$typeConnection] ) {
			self::$sql = new DataManager(
				[
					'database_type' => Constants::DATABASE_DATE[$typeConnection]["type"],
					'database_name' => Constants::DATABASE_DATE[$typeConnection]["name"],
					'server'        => Constants::DATABASE_DATE[$typeConnection]["server"],
					'username'      => Constants::DATABASE_DATE[$typeConnection]["username"],
					'password'      => Constants::DATABASE_DATE[$typeConnection]["password"],
					'charset'       => 'utf8',
				]
			);
		} else {
			throw new \Exception("Not exist config for connection");
		}
	}

	public function saveData($data) {
		return;
	}

	/**
	 * @param int $user_id
	 */
	public function saveTGUser(int $user_id) {
		if ( !self::$sql->count("users_tg", ["USER_ID" => $user_id]) ) {
			self::$sql->insert("users_tg", ["USER_ID" => $user_id]);
		}
	}

	public function saveLog($data, $logFrom) {
		self::$sql->insert(
			"logs",
			[
				"FROM" => $logFrom,
				"LOG"  => $data,
			]
		);
	}

	/**
	 * @return array
	 */
	public function getAllTGUsers($onlyTest = false) {
		$where = null;
		if($onlyTest){
			$where = ["TESTING" => 1];
		}
		$users = self::$sql->select("users_tg", "*", null, $where);
		$arUsers = [];
		if ( count($users) ) {
			foreach ($users as $user) {
				$arUsers[] = $user["USER_ID"];
			}
		}

		return $arUsers;
	}
}
