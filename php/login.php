<?php 
  require 'function.php';
  if(isset($_GET)){
    $username=htmlspecialchars($_GET["username"]);
    $password=htmlspecialchars($_GET["password"]);
    $result=mysqli_query($conn,"SELECT * FROM tb_user WHERE username='$username'");
    $hasil = null;
    //cek username
    if(mysqli_num_rows($result)===1){
      ///cek password
      $username = mysqli_fetch_assoc($result);    
      if(password_verify($password,$username['password'])){
        $hasil = $username['username'];
      }
    }
    echo json_encode([$hasil]); 
  }
 ?>

