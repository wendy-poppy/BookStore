<?php
if(!empty($_GET['type'])){
	$type = $_GET['type'];
}
if(!empty($_GET['getCount'])){
	$getCount = $_GET['getCount'];
}

if(!empty($type)){
	if($type =='first'){
		$sql = "SELECT * FROM addmore LIMIT 0,6";
		$arr = getlist($sql);
		echo json_encode($arr);
	}
	if($type=='count'){
		$sql = "SELECT * FROM addmore";
		$count = count(getlist($sql));
		echo $count;
	}
}

if(!empty($getCount)){
	$min = ($getCount-1)*6;
	$num = 6;
	$sql = "SELECT * FROM addmore LIMIT $min,$num";
	$arr = getlist($sql);
	echo json_encode($arr);
}

function getList($sql){
	$mysqli = mysqli_connect('localhost','root','','mybook');
	// if(mysqli_errno($mysqli)){	
	// 	echo mysqli_error($link);
	// }else{
	// 	echo '链接成功';
	// }
	mysqli_query($mysqli,'set names utf8');
	$res = mysqli_query($mysqli,$sql);
	$list=array();
	while($li = mysqli_fetch_assoc($res)){
		$list[] = $li;
	}
	return $list;
}

?>