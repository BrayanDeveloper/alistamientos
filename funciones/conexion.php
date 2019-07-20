<?php  
/**
* 
*/
class Conexion
{
	public function conectar(){
		#$datos = "mysql:dbname=admin_cootransunidos; host=localhost;";
		#$user = "admin_developer";
		#$pass = "cuentaDeveloper";
		$datos = "mysql:dbname=admin_cootransunidos1; host=localhost;";
		$user = "root";
		$pass = "";
		try {
			$pdo = new PDO($datos,$user,$pass);
			echo "
				<script>
					console.log('Conect');
				</script>
			";
			return $pdo;
		} catch (Exception $e) {
			$e->getMessage();
		}
	}
}
?>