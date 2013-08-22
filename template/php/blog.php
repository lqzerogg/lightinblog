<?php
    mysql_query("SET NAMES 'UTF8'"); 
	$db=new mysqli("localhost","root","","lightinblog");
    if(mysqli_connect_errno())
	{
			echo "error";
	}
    $data = [];
    $id = 1;
	$sql="select 
		 a.title,
		 a.author,
		 a.category,
		 a.address,
		 a.introduction
		from article a
		where a.id is not null and a.id in (".$id.") ";				
	$result=$db->query($sql);
	$num_results=$result->num_rows;
	$row=$result->fetch_assoc();
	$contents = file_get_contents($row['address']);
	$out=array(
		'title'=>$row['title'],
		'author'=>$row['author'],
		'category'=>$row['category'],
		'contents'=>$contents
		);
    array_push($data,$out);
	echo json_encode($data);
?>