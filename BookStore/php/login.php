<?php

if(!empty($_POST['username'])){
	$username = $_POST['username'];
}
if(!empty($_POST['pwd'])){
	$pwd = $_POST['pwd'];
}
if(!empty($_POST['tel'])){
	$tel = $_POST['tel'];
}
if(!empty($_POST['target'])){
	$target = $_POST['target'];
}else{
	return;
}

if($target =='register'){
	$res = register($username,$tel);
	if($res){
		echo '用户名或手机号码已存在'; 
	}else{
		$sql = "INSERT INTO login (username,pwd,tel) VALUES('$username','$pwd',$tel)";
		add($sql); 
	}
}else if($target =='sign'){
	$res = sign_in($username,$pwd);
	if($res){
		echo '1';
	}else{
		echo '0';
	} 
}



//登录
function sign_in($username,$pwd){
	$sql = "SELECT * FROM login WHERE username='$username' AND pwd='$pwd'";
	$res = getlist($sql);
	$length = count($res);
	if($length){
		return true;
	}else{
		return false;
	}
}
//注册
function register($username,$tel){
	$sql = "SELECT * FROM login WHERE username='$username' OR tel='$tel'";

	$res = getlist($sql);
	$length = count($res);
	if($length){
		return true;
	}else{
		return false;
	}
}


//增加数据
function add($sql){
	$mysqli = new mysqli('localhost','root','','mybook');
	if($mysqli->errno){
		echo $mysqli->errno;
	};
	//设置编码
	$mysqli->query('set names utf8');
	$res = $mysqli->query($sql);
	if($res){
	    echo '添加成功';
	}else{
		echo '添加失败';
	}
}

//查询数据
function getlist($sql){
	$link = mysqli_connect('localhost','root','','mybook');
	//设置编码
	mysqli_query($link,'set names utf8');
	//执行
	$res = mysqli_query($link,$sql);
	//方式二   常用
	$list=array();
	while($li = mysqli_fetch_assoc($res)){
		$list[] = $li;
	}
	return $list;
}



?>