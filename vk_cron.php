<?
chdir("/");
require_once __DIR__."/heavybot/heavy_autoload.php";
$dt = \HeavyBot\Database::getInstance();
$dt->saveLog("test", "test");
