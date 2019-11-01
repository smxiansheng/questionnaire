<?php

include('php/conn.php');

$jyhjmc = $_POST['jyhjmc'];

$sql = "INSERT INTO `b_jyhj`(`jyhjmc`) VALUES ('".$jyhjmc."')";

if (mysqli_query($conn,$sql)) {
		echo  "<script>location.href='".$_SERVER["HTTP_REFERER"]."';</script>";
	}else{
		echo "fail";
	}
	mysqli_close($conn);

?>