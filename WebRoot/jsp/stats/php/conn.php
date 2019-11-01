<?php
// header("Content-Type: text/html;charset=utf-8"); 
// header('Access-Control-Allow-Origin: *');
// header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
// header('Access-Control-Allow-Methods: GET, POST, PUT');

//$conn = mysqli_connect("localhost:3306","root","root","research");//数据库地址，用户名，密码，数据库名称
$conn = mysqli_connect("localhost:3306","root","root","diaochabiao");

if (!$conn){
    die("连接数据库失败：" . mysql_error());
}else{
	//echo 'success';
}
//mysqli_select_db($conn);
//字符转换，读库
//mysqli_query($conn,"set character set 'uft-8'");
//写库
//mysqli_query($conn,"set names 'utf-8'");

mysqli_query($conn,"SET NAMES 'UTF8'"); 
mysqli_query($conn,"SET CHARACTER SET UTF8"); 
mysqli_query($conn,"SET CHARACTER_SET_RESULTS=UTF8'"); 

?>