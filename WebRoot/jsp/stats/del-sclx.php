<?php

	include("php/conn.php");
	
	$scid = $_POST['scid'];

	$del = "DELETE FROM b_sclx WHERE scid=$scid";
	
	if (mysqli_query($conn,$del)) {
		//echo "success";
	}else{
		echo "fail";
	}
	mysqli_close($conn);



?>