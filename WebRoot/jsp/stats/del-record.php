<?php

	include("php/conn.php");
	$a_xlid = $_POST['a_xlid'];

	$del = "DELETE FROM b_xl WHERE a_xlid=$a_xlid";
	
	if (mysqli_query($conn,$del)) {
		echo "success";
	}else{
		echo "fail";
	}
	mysqli_close($conn);



?>