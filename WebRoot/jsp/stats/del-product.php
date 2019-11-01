<?php

	include("php/conn.php");
	$scfsid = $_POST['scfsid'];

	$del = "DELETE FROM b_scfs WHERE scfsid=$scfsid";
	
	if (mysqli_query($conn,$del)) {
		echo "success";
	}else{
		echo "fail";
	}
	mysqli_close($conn);



?>