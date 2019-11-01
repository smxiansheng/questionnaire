<?php

include('php/conn.php');

$scfsmc = $_POST['scfsmc'];

$sql = "INSERT INTO `b_scfs`(`scfsmc`) VALUES ('".$scfsmc."')";

if (mysqli_query($conn,$sql)) {
		echo  "<script>location.href='".$_SERVER["HTTP_REFERER"]."';</script>";
	}else{
		echo "fail";
	}
	mysqli_close($conn);

?>