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

		$conn->set_charset('utf8');

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

	}

	class itemshop extends Mysql {

		function get_cats() {

		$find = mysqli_query($this->conexion(),"SELECT * FROM player.shop_class order by classname ASC");
		while($row = mysqli_fetch_array($find,MYSQLI_ASSOC)){
		echo  '<option value="'.$row['classid'].'">'.$row['classname'].'</option>';
			}
		}

		function get_items() {
			$find = mysqli_query($this->conexion(),"SELECT * FROM player.item_shop_buy order by classid ASC");
			while($row = mysqli_fetch_array($find,MYSQLI_ASSOC)){
			echo  '<option value="'.$row['id'].'">'.$row['name'].'</option>';
			}

		}

		function get_edit_item($id) {
			$find = mysqli_query($this->conexion(),"SELECT * FROM player.item_shop_buy WHERE id='".$id."'");
			$array=array();
			$row = mysqli_fetch_array($find,MYSQLI_ASSOC);
			$array[] = array_map('htmlentities', $row);
			echo json_encode($array);				
		}
	}	
?>