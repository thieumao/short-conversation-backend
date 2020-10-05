<?php
$hash = $_GET["hash"];
$value = $_GET["value"];
if($value && $hash) {
  $filePath = "data/" . $hash . ".txt";
  $file = fopen($filePath, "w") or die("Unable to open file!");
  fwrite($file, $value);
  fclose($file);
  echo "Ok";
} else {
  echo "Error";
}
?>