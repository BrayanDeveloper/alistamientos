<?php 
session_start();
include 'conexion.php';
	$conexion = new Conexion();
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