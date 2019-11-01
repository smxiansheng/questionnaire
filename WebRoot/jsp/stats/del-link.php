<?php

	include("php/conn.php");
	$jyhjid = $_POST['jyhjid'];

	$del = "DELETE FROM b_jyhj WHERE jyhjid=$jyhjid";
	
	if (mysqli_query($conn,$del)) {
		echo "success";
	}else{
		echo "fail";
	}
	mysqli_close($conn);



?>