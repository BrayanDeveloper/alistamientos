<?php 
session_start();
include 'conexion.php';
	$conexion = new Conexion();
	$fecha = date('r');
	$sql = "SELECT * FROM usuarios  WHERE username = '".$_POST['username']."' AND password = '".$_POST['pass']."' ";
	
		
		$conectando = $conexion->conectar()->query($sql)->fetchAll();
		if ($conectando) {
			foreach ($conectando as $key) {

				$id = $key['id_usuario'];
				$_SESSION['id_usuario'] = $key['id_usuario'];
				$_SESSION['nombre'] = $key['nombre'];
				$_SESSION['username'] = $key['username'];
				$_SESSION['apellido'] = $key['apellido'];
				$_SESSION['estado'] = $key['estado'];
				$_SESSION['firma'] = $key['firma'];
				$_SESSION['rol'] = $key['rol'];

				#aqui agregamos un registro a logs como un registro de ingreso al sistema.

				if ($_SESSION['rol'] == 'admin') {
					// $sqlLog = "INSERT INTO logs(accion, fecha, username, id_usuario)VALUES('ingreso al sistema', '$fecha', '$_SESSION[username]', $_SESSION[id_usuario])";
					// $log = $conexion->conectar()->query($sqlLog);
					header('location: ../admin/ingreso');
				}
				else if ($_SESSION['rol'] == 'usuario') {
					$sqlLog = "INSERT INTO logs(accion, fecha, username, id_usuario)VALUES('ingreso al sistema', '$fecha', '$_SESSION[username]', $_SESSION[id_usuario])";
					$log = $conexion->conectar()->query($sqlLog);				
					header('location: ../ingreso');
				}
				else{
					header('location: ../index');
				}
				
			}
			
			
		}
		else
		{
			echo "
			<script>
			alert('no eres usuario, por favor verifica tus credenciales de ingreso nuevamente.');
			location.href = ('../index');
			</script>
			";
		}
?>