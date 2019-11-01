<?php

include('php/conn.php');

$scmc = $_POST['scmc'];

$sql = "INSERT INTO `b_sclx`(`scmc`) VALUES ('".$scmc."')";

if (mysqli_query($conn,$sql)) {
		echo  "<script>location.href='".$_SERVER["HTTP_REFERER"]."';</script>";
	}else{
		echo "fail";
	}
	mysqli_close($conn);

?>