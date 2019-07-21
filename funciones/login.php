<?php 
session_start();
include 'conexion.php';
	$conexion = new Conexion();
	$fecha = date('r');
	$sql = "SELECT * FROM usuarios  WHERE username = '".$_POST['username']."' AND password = '".$_POST['pass']."' AND rol = 'usuario'; ";
	
		
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

				#aqui agregamos un registro a logs como un registro de ingreso al sistema.
				$sqlLog = "INSERT INTO logs(accion, fecha, id_usuario)VALUES('ingreso al sistema', '$fecha', $_SESSION[id_usuario])";
				$log = $conexion->conectar()->query($sqlLog);

				// $_SESSION['password'] = $key['password'];
				
			}
			
			header('location: ../ingreso');
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