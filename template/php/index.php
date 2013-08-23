<?php
	$filename = "../index/index.html";
	$file=fopen($filename,"r") or exit("Unable to open file!");
	if($file) {
		$html = fread($file, filesize($filename));
		fclose($file);	
		echo($html);			
	}else {
		echo("error");
	}
?>