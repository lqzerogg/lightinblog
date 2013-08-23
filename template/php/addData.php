<?php
	// mysql_query("SET NAMES 'UTF8'"); 
	// $db=new mysqli("localhost","root","","lightinblog");
 //    if(mysqli_connect_errno())
	// {
	// 	echo "error";
	// }
	function mkdirs($dir, $mode = 0777)  
	{  
		if (is_dir($dir) || @mkdir($dir, $mode)){
			return TRUE;
		}  
		if (!mkdirs(dirname($dir), $mode)){
			return FALSE;
		}  
		return @mkdir($dir, $mode);  
	}
	$path = "../../article";
	$
	$string = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
	$introduction1 = "ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life";
	$introduction2 = "This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages";
	$introduction3 = "Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers";
	$categoryArray = [1,2,3,4];
	$authorArray = ["Simms","Simon","peter","star","sky","andy","alan","sam","Adam"];
	$titleArray = ["one world","two world","three world"];
	$introductionArray = [$introduction1,$introduction2,$introduction3];
	for($i = 0;$i < 100 ; $i++){
		$category = $categoryArray[rand(0,3)];
		$author = $authorArray[rand(0,8)];
		$title = $titleArray[rand(0,2)];
		$introduction = $introductionArray[rand(0,2)];
		for($j=0;$j<15;$j++){

		}

	}
?>