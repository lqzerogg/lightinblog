<?php
	// function mkdirs($dir, $mode = 0777)  
	// {  
	// 	if (is_dir($dir) || @mkdir($dir, $mode)){
	// 		return TRUE;
	// 	}  
	// 	if (!mkdirs(dirname($dir), $mode)){
	// 		return FALSE;
	// 	}  
	// 	return @mkdir($dir, $mode);  
	// }
	function checkTableList($database,$table){
		$result = mysql_list_tables($database);
		$i = 0;        
	    while($i<mysql_num_rows($result))
	    {
		    if ($table == mysql_tablename($result,$i)) {
		        return true;
		    }                          
		    $i++;     
		}
			return false;
	}
	mysql_query("SET NAMES 'UTF8'"); 
	$con = mysql_connect("localhost","root","");
    if (!$con)
	{
	  die('Could not connect: ' . mysql_error());
	}
	if(!mysql_select_db("lightinblog", $con)){
		if (mysql_query("CREATE DATABASE lightinblog",$con))
		{
		  echo "Database created";
		}
		else
		{
		  echo "Error creating database: " . mysql_error();
		}
		mysql_select_db("lightinblog", $con);
	}
	if(!checkTableList("lightinblog","article")){
		$table = "CREATE TABLE article
			(
				id int(15) primary key,
				author char(30),
				title char(50),
				category int(5),
				address char(30),
				introduction char(200)
			)";
		if(mysql_query($table,$con)){
			echo "creat table success";
		}
	}
	$path = "../../articles/";
	$mode = 0777;
	$string = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
	$introduction1 = "ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life";
	$introduction2 = "This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages";
	$introduction3 = "Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers";
	$categoryArray = [1,2,3,4];
	$authorArray = ["Simms","Simon","peter","star","sky","andy","alan","sam","Adam"];
	$titleArray = ["one world","two world","three world"];
	$introductionArray = [$introduction1,$introduction2,$introduction3];
	for($i = 0;$i < 100 ; $i++){
		$file = "";
		$contents = "";
		$category = $categoryArray[rand(0,3)];
		$author = $authorArray[rand(0,8)];
		$title = $titleArray[rand(0,2)].rand(0,1000);
		$introduction = $introductionArray[rand(0,2)];
		for($j=0;$j<10;$j++){
			$file = $file.$string[rand(0,25)];
		}
		for($k=0;$k<200;$k++){
			if($k%6 == 0){
				$contents = $contents." ";
			}
			$contents = $contents.$string[rand(0,25)];
		}
		$filePath = $path.$file.".txt";
		$article = fopen($filePath,"w");
		fwrite($article,$contents);
		fclose($article);
		$sql = "insert into article(id,author,title,category,address,introduction) values('$i','$author','$title','$category','$filePath','$introduction')";
		$result=mysql_query($sql,$con);
	}
?>