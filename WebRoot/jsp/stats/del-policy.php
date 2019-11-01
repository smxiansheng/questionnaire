<?php

	include("php/conn.php");
	$zcbzid = $_POST['zcbzid'];

	$del = "DELETE FROM b_zcbzjjrbx WHERE zcbzid=$zcbzid";
	
	if (mysqli_query($conn,$del)) {
		echo "success";
	}else{
		echo "fail";
	}
	mysqli_close($conn);



?>