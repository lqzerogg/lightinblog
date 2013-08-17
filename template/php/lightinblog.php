<?php
//setlocale(LC_ALL,'zh_CN');
    mysql_query("SET NAMES 'UTF8'"); 
	$con = mysql_connect("localhost","root ","");
    if (!$con)
    {
      die('Could not connect: ' . mysql_error());
    }
    mysql_select_db("lightinblog", $con);
 //传递参数
	$flag  = $_GET['flag'];
	$category=$_GET['category'];
    $author=$_GET['author'];
	$name=$_GET['name'];
    $id=$_GET['id'];
	$address=$_GET['address'];
//筛选条件
    if($flag==1){     
		$sql="select 
		     a.id,
			 a.name,
			 a.author,
			 a.category,
			 a.address
			from aticles a
			where a.id is not null";
		if($category!=0){
	       $sql.=" and a.category in (".$category.") ";
	    }
		if($author!=0){ 
			$sql.="and a.author in(".$author.") "; 
		}
		 if($name!=0){
	    	$sql.="and a.name in(".$name.")";
	    }
									
		
		
	    $stid = oci_parse($conn, $sql);
	    oci_execute($stid);
		$data = array();
		while($row = oci_fetch_array($stid)){
		   $out=array($row[0],$row[1],$row[2],$row[3],$row[4]);
		   array_push($data,$out);	
	   }
	   
	   echo json_encode($data);;

	}
	


//读取文件内容
	else if($flag==2){  
		$file=fopen($address,"r") or exit("Unable to open file!");
		echo json_encode($file);;
	}


function unescape($str){   
        $ret = '';   
        $len = strlen($str);   
        for ($i = 0; $i < $len; $i++){   
            if ($str[$i] == '%' && $str[$i+1] == 'u'){   
                $val = hexdec(substr($str, $i+2, 4));   
                if ($val < 0x7f) $ret .= chr($val);   
                else if($val < 0x800) $ret .= chr(0xc0|($val>>6)).chr(0x80|($val&0x3f));   
                else $ret .= chr(0xe0|($val>>12)).chr(0x80|(($val>>6)&0x3f)).chr(0x80|($val&0x3f));   
                $i += 5;   
            }   
            else if ($str[$i] == '%'){   
                $ret .= urldecode(substr($str, $i, 3));   
                $i += 2;   
			}   
            else $ret .= $str[$i];   
		}   
        return $ret;   
	}   
	
?> 