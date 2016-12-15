<?php
if(!empty($_POST['book_name'])){
	$book_name = $_POST['book_name'];
}
if(!empty($_POST['intro'])){
	$intro = $_POST['intro'];
}
if(!empty($_POST['author'])){
	$author = $_POST['author'];
}
if(!empty($_POST['concern'])){
	$concern = $_POST['concern'];
}
if(!empty($_POST['date'])){
	$date = $_POST['date'];
}
if(!empty($_POST['price'])){
	$price = $_POST['price'];
}
if(!empty($_POST['ISBN'])){
	$ISBN = $_POST['ISBN'];
}

//处理文件
if(!file_exists('../uploads')){
	mkdir('../uploads');
}
$file = $_FILES['file']['tmp_name'];  //获取文件路径
$newName = $_FILES['file']['name']; //获取文件的名字
$res = move_uploaded_file($file,"../uploads/{$newName}"); //原名上传到指定文件夹
if($res){
	$url="../uploads/{$newName}";
}

$sql ="INSERT INTO addmore (book_name,intro,author,concern,date,price,ISBN,url) 
	   VALUES('$book_name','$intro','$author','$concern','$date','$price','$ISBN','$url')";
$res =add($sql);

//增加数据
function add($sql){
	$mysqli = new mysqli('localhost','root','','mybook');
	// if($mysqli->errno){
	// 	echo $mysqli->errno;
	// };
	//设置编码
	$mysqli->query('set names utf8');
	$res = $mysqli->query($sql);
	if($res){
	    echo '添加成功';
	}else{
		echo '添加失败';
	}
}
?>