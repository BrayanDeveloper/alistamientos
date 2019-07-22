<?php 
session_start();
if ($_SESSION['username']) {
	include 'funciones/conexion.php';
	$conexion = new Conexion();
	$fecha = date('r');
	$sqlLog = "INSERT INTO logs(accion, fecha, username, id_usuario)VALUES('salida del sistema', '$fecha', '$_SESSION[username]', $_SESSION[id_usuario])";
	$log = $conexion->conectar()->query($sqlLog);
	$destruir = session_destroy();
	if ($destruir) {
		header('location: index');
	}
}
?>