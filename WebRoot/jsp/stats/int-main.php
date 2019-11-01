<?php

include('php/conn.php');

$jyztlxmc = $_POST['jyztlxmc'];

$sql = "INSERT INTO `b_jyztlx`(`jyztlxmc`) VALUES ('".$jyztlxmc."')";

if (mysqli_query($conn,$sql)) {
		echo  "<script>location.href='".$_SERVER["HTTP_REFERER"]."';</script>";
	}else{
		echo "fail";
	}
	mysqli_close($conn);

?>