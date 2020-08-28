<?php 
	$conn=mysqli_connect("localhost","root","","loker_news");
  if(!$conn){exit();}
	function query($query){
		global $conn;
		$result=mysqli_query($conn,$query);
		$rows=[];
		while ($row = mysqli_fetch_assoc($result)) {
			$rows[]=$row;
		}
		return $rows;	
	}
	function registrasi($data){
		global $conn;
		$username = strtolower(htmlspecialchars($data["username"])); //membersihkan input an backslash kemudian smeua input di ubah sebagai char
		$password = mysqli_real_escape_string($conn,$data["password"]); //memungkinkan " sebagai input an
		// enkripsi password
		$password = password_hash($password, PASSWORD_DEFAULT);

		mysqli_query($conn,"INSERT INTO tb_user VALUES ('','$username','$password')");
	}
 ?>