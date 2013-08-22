<?php
	mysql_query("SET NAMES 'UTF8'"); 
	$db=new mysqli("localhost","root","","lightinblog");
    if(mysqli_connect_errno())
	{
			echo "error";
	}
	$category=$_GET['category'];
    $author=$_GET['author'];
	$title=$_GET['title'];
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
		if($category!=0){
	        $sql.=" and a.category in (".$category.") ";
	    }
		if($author!=0){ 
			$sql.="and a.author in(".$author.") "; 
		}
		 if($title!=0){
	    	$sql.="and a.name in(".$title.")";
	    }
								
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