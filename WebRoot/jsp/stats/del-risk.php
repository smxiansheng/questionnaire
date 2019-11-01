<?php

	include("php/conn.php");
	$jyfxid = $_POST['jyfxid'];

	$del = "DELETE FROM b_jyfx WHERE jyfxid=$jyfxid";
	
	if (mysqli_query($conn,$del)) {
		echo "success";
	}else{
		echo "fail";
	}
	mysqli_close($conn);



?>