<?php

include('php/conn.php');

$a_xl = $_POST['a_xl'];

$sql = "INSERT INTO `b_xl`(`a_xl`) VALUES ('".$a_xl."')";

if (mysqli_query($conn,$sql)) {
		echo  "<script>location.href='".$_SERVER["HTTP_REFERER"]."';</script>";
	}else{
		echo "fail";
	}
	mysqli_close($conn);

?>