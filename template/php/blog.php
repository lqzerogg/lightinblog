<?php
	$address=$_GET['address'];
	$file=fopen($address,"r") or exit("Unable to open file!");
	echo json_encode($file);
?>