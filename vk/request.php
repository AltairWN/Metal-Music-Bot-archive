<?
// Открыть текстовый файл
$f = fopen(__DIR__."/log.txt", "w");
// Записать текст
fwrite($f, $_POST);
// Закрыть текстовый файл
fclose($f);
//$data = json_decode();
