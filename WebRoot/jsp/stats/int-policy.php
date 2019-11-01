<?php

include('php/conn.php');

$zcbzmc = $_POST['zcbzmc'];

$sql = "INSERT INTO `b_zcbzjjrbx`(`zcbzmc`) VALUES ('".$zcbzmc."')";

if (mysqli_query($conn,$sql)) {
		echo  "<script>location.href='".$_SERVER["HTTP_REFERER"]."';</script>";
	}else{
		echo "fail";
	}
	mysqli_close($conn);

?>