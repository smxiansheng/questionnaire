<?php

include('php/conn.php');

$jyfxmc = $_POST['jyfxmc'];

$sql = "INSERT INTO `b_jyfx`(`jyfxmc`) VALUES ('".$jyfxmc."')";

if (mysqli_query($conn,$sql)) {
		echo  "<script>location.href='".$_SERVER["HTTP_REFERER"]."';</script>";
	}else{
		echo "fail";
	}
	mysqli_close($conn);

?>