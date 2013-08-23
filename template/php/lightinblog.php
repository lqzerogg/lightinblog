<?php
    mysql_query("SET NAMES 'UTF8'"); 
	$db=new mysqli("localhost","root","","lightinblog");
    if(mysqli_connect_errno())
	{
			echo "error";
	}
    $data = [];    
	$sql="select 
	     a.id,
		 a.title,
		 a.author,
		 a.category,
		 a.address,
		 a.introduction
		from article a
		where a.id is not null";
		$result=$db->query($sql);
		$num_results=$result->num_rows;
		for($i=1;$i<=$num_results;$i++)
		{
			$row=$result->fetch_assoc();
			$out=array(
				'id'=>$row['id'],
				'title'=>$row['title'],
				'author'=>$row['author'],
				'category'=>$row['category'],
				'address'=>$row['address'],
				'introduction'=>$row['introduction']
				);
		    array_push($data,$out);	
			
		}
    echo json_encode($data);
?> 