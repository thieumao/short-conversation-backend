<?php
$hash = $_GET["hash"];
if($hash) {
  $filePath = "data/" . $hash . ".txt";
  $myfile = fopen($filePath, "r") or die("Unable to open file!");
  $value = fgets($myfile); 
  fclose($myfile);
  echo $value;
} else {
  echo "Error";
}
?>