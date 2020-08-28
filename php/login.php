<?php 
    require 'function.php';
    $hasil = query("SELECT * FROM tb_user");
    echo json_encode($hasil); 
 ?>
