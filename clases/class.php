<?php
session_start();
// conexion con base de datos

class Mysql {
	
	private $host = "localhost";
	private $user = "root";
	private $pass = "123456";
	private $db = "account";
	
	public function conexion() {
				
		$conn = new mysqli($this->host,$this->user,$this->pass,$this->db);
		
		if($conn) {			
			return $conn;			
		}
		else {
			echo mysql_error();
		}	
			
		$conn->close();
	   }
	}

// clase logeo y deslogueo de usuarios
class Login extends Mysql{
	
	var $ids;
	var $pass;
	
	public function logmein($id,$pass) {
		
		$this->ids = $id;
		$this->pass = $pass;
		
		$resultado = mysqli_query($this->conexion(), "SELECT * from account where login='".$this->ids."' and password=PASSWORD('".$this->pass."')");
		$row = mysqli_fetch_array($resultado,MYSQLI_ASSOC);
		
		if($row['id']){

		$_SESSION['web_admin'] = $row['web_admin'];
		$_SESSION['login'] = $row['login'];


		echo "success";

		}

		else
			
		{
			echo "invalid_login";
		}
	}		
	
	public function deslogin() {
				
		@session_start();
		@session_unset();
		@session_destroy();
		@session_write_close();
		@setcookie(session_name(),'',0,'/');
		
		}
	}
?>