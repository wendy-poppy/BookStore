<?php

//添加列表数据
if(!empty($_POST['add'])){
	$add = $_POST['add'];

	$res = json_decode($add,true);
	$url = $res['url'];
	$book_name = $res['book_name'];
	$price = (float)$res['price'];
	$id = $res['id'];

	$sql = "SELECT * FROM shop WHERE id=$id";
	$result = getlist($sql);

	if(!empty($result)){
		$count = getlist($sql)[0]['count']+1;
		$sql = "UPDATE shop SET count=$count WHERE id = $id";
		$res = update($sql);
		if($res){ 
			echo '添加成功';
		}else{
			echo "添加失败";
		}
	}else{
		$sql = "INSERT INTO shop (id,url,book_name,count,price) VALUES ($id,'$url','$book_name',1,$price)";
		$res = add($sql);
		if($sql){ 
			echo '添加成功';
		}else{
			echo "添加失败";
		}
	}
}

//获得列表数据
if(!empty($_POST['getlist'])){
	$getlist = $_POST['getlist'];
	$sql = "SELECT * FROM shop";
	$res = getlist($sql);
	if(!empty($res)){
		echo json_encode($res);
	}
}

//删除列表数据
if(!empty($_POST['del'])){
	$del = $_POST['del'];
	$id = $_POST['id'];
	$sql = "DELETE  FROM shop WHERE id=$id";
	$res = del($sql);
	if($res){
		echo '删除成功';
	}else{
		echo "删除失败";
	}
}


function getList($sql){
	$mysqli = mysqli_connect('localhost','root','','mybook');
	// if(mysqli_errno($mysqli){
	// 	echo mysqli_error($mysqli);
	// }else{
	// 	echo '连接成功';
	// }
	mysqli_query($mysqli,'set names utf8');
	$res = mysqli_query($mysqli,$sql);
	$list = array();
	while ($li = mysqli_fetch_assoc($res)) {
		$list[] = $li;
	}
	return $list;
}

function add($sql){
	$mysqli = mysqli_connect('localhost','root','','mybook');
	mysqli_query($mysqli,'set names utf8');
	$res = mysqli_query($mysqli,$sql);
	if($res){
		return true;
	}else{
		return false;
	}
}
function update($sql){
	$mysqli = mysqli_connect('localhost','root','','mybook');
	mysqli_query($mysqli,'set names utf8');
	$res = mysqli_query($mysqli,$sql);
	if($res){
		return true;
	}else{
		return false;
	}
}
function del($sql){
	$mysqli = mysqli_connect('localhost','root','','mybook');
	mysqli_query($mysqli,'set names utf8');
	$res = mysqli_query($mysqli,$sql);
	if($res){
		return true;
	}else{
		return false;
	}
}







?>