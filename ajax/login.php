<?php
require("../clases/class.php");

// Obteniendo valores desde el app.js login

$user = $_GET['user'];
$pass = $_GET['pass'];

// LLamando a la clase

$class = new Login();
$class->logmein($user,$pass);

?>
