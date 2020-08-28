<?php 
	require 'function.php';
	$coba=query("SELECT * FROM tb_news");
	echo json_encode($coba);
?>
