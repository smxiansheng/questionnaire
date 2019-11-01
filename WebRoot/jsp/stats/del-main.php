<?php

	include("php/conn.php");
	$jyztlxid = $_POST['jyztlxid'];

	$del = "DELETE FROM b_jyztlx WHERE jyztlxid=$jyztlxid";
	
	if (mysqli_query($conn,$del)) {
		echo "success";
	}else{
		echo "fail";
	}
	mysqli_close($conn);



?>