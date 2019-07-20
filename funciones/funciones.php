<?php 
session_start();
if ($_SESSION['id_usuario']) {
	# code...

require 'conexion.php';

#editar alistamiento
if (@$_POST['editar-alistamiento'] == 'editar-alistamiento') {
	// echo "<pre>";
	// var_dump($_POST);
	// echo "</pre>";
	// $hora_despacho = date('h:m:s');
	$conexion = new Conexion();
	$sql = "UPDATE alistamientos SET
	fecha_inspeccion='$_POST[fecha_inspeccion]',
	hora_inspeccion=	'$_POST[hora_inspeccion]',
	
	distribuccion=	'$_POST[distribuccion]', 
	tipo_alistamiento=	'$_POST[tipo_alistamiento]', 
	usuario_alistamiento=	'$_SESSION[username]',
	placa=	'$_POST[placa]', 
	n_interno=	$_POST[n_interno], 
	cantidad_puestos=	$_POST[cantidad_puestos],
	clase_vehiculo=	'$_POST[clase_vehiculo]', 
	valor=	$_POST[valor], 

	ruta_operativa=	'$_POST[ruta_operativa]',
	kilometraje=	'$_POST[kilometraje]',
	empresa_vehiculo=	'$_POST[empresa_vehiculo]',
	cedula_propietario=	'$_POST[cedula_propietario]', 
	nombre_propietario=	'$_POST[nombre_propietario]', 
	cedula_conductor=	'$_POST[cedula_conductor]', 
	nombre_conductor=	'$_POST[nombre_conductor]',
	estado_final=	'$_POST[estado_final]', 
	observacion_general=	'$_POST[observacion_general]'
	WHERE id_alistamiento=$_POST[id]";
		
		$conectando = $conexion->conectar()->query($sql);
		if ($conectando) {			
			echo "
			<script>
				alert('Actualizado con exito');
				location.href = ('../ver-alistamientos');
			</script>
			";
		}
	}
	#crear alistamiento
if (@$_POST['crear-alistamiento'] == 'crear-alistamiento') {
	// echo "<pre>";
	// var_dump($_POST);
	// echo "</pre>";
	$hora_despacho = date('H:i:s A');
	$hora_inspeccion = date('H:i:s A');
	$fecha_inspeccion = date('r');
	$conexion = new Conexion();
	$sql = "INSERT INTO alistamientos(
	fecha_inspeccion,
	hora_inspeccion,
	n_alistamiento,
	distribuccion, 
	tipo_alistamiento, 
	usuario_alistamiento,
	placa, 
	n_interno, 
	cantidad_puestos,
	clase_vehiculo, 
	valor, 
	hora_despacho,
	ruta_operativa,
	kilometraje,
	empresa_vehiculo,
	cedula_propietario, 
	nombre_propietario, 
	cedula_conductor, 
	nombre_conductor,
	estado_final, 
	observacion_general, 
	id_usuario
	)VALUES(
	'".$fecha_inspeccion."',
	'".$hora_inspeccion."',
	$_POST[n_alistamiento],
	'$_POST[distribuccion]',
	'$_POST[tipo_alistamiento]',
	'$_SESSION[username]',
	'$_POST[placa]',
	$_POST[n_interno],
	$_POST[cantidad_puestos],
	'$_POST[clase_vehiculo]',
	$_POST[valor],
	'".$hora_despacho."',
	'$_POST[ruta_operativa]',
	'$_POST[kilometraje]',
	'$_POST[empresa_vehiculo]',
	'$_POST[cedula_propietario]',
	'$_POST[nombre_propietario]',
	'$_POST[cedula_conductor]',
	'$_POST[nombre_conductor]',
	'$_POST[estado_final]',
	'$_POST[observacion_general]',
	$_SESSION[id_usuario]
	)";
		
		$conectando = $conexion->conectar()->query($sql);
		if ($conectando) {			
			echo "
			<script>
				alert('agregado con exito');
				
			</script>
			";

		
		require_once __DIR__ . '/../librerias/pdf/vendor/autoload.php';
	
    // $conexion = new Conexion();


	// <h1 style="text-aling:center;">COOTRANSUNIDOS</h1>
	
			$html = '
			<br>
			<H2>NIT: 890501119-7</H2>
			<h4>RESOLUCION: FECHA: </h4>
			<P>FECHA INSPECCION: '.$fecha_inspeccion.'<br> HORA: '.$hora_inspeccion.'</P>
			<h5>#N ALISTAMIENTO: '.$_POST['n_alistamiento'].'</h5>
			<p>USUARIO: '.$_SESSION['username'].'</p>
			<h3>DETALLE DEL ALISTAMIENTO</h3>
			<P>PLACA: '.$_POST['placa'].' N# INTERNO: '.$_POST['n_interno'].'</P>
			<p>CANT_PUESTOS: '.$_POST['cantidad_puestos'].'</p>
			<p>CLASE VEHICULO: '.$_POST['clase_vehiculo'].'</p>
			<p>VALOR: '.$_POST['valor'].'</p>
			<p>HORA DESPACHO: '.$hora_despacho.'</p>
			<p>RUTA OPERATIVA: '.$_POST['ruta_operativa'].'</p>
			<p>KILOMETRAJE: '.$_POST['kilometraje'].'</p>
			<p>EMPRESA VEHICULO: '.$_POST['empresa_vehiculo'].'</p>
			<p>CEDULA PROPIETARIO: '.$_POST['cedula_propietario'].'</p>
			<p>NOMBRE PROPIETARIO: '.$_POST['nombre_propietario'].'</p>
			<p>CEDULA CONDUCTOR: '.$_POST['cedula_conductor'].'</p>
			<p>NOMBRE CONDUCTOR: '.$_POST['nombre_conductor'].'</p>
			<p>ESTADO FINAL: '.$_POST['estado_final'].'</p>
			<p>OBSERVACION GENERAL: '.$_POST['observacion_general'].'</p>
			<p>FIRMA: </p>
			
			';
	    
	
	    $newHtml = $html;	

    
	
	    $mpdf = new \Mpdf\Mpdf(['format' => 'Legal']);

		$mpdf->WriteHTML($newHtml);

		$mpdf->Image('../img/logo/logo.png', 10, 10, 60, 10, 'png', '', true, false);
		$mpdf->Image('../img/firma/'.$_SESSION["firma"].'', 30, 220, 30, 10, 'jpg', '', true, false);
    	$mpdf->Output();
		}
}

#eliminar alistamiento
if (@$_GET['id_delete_alistamiento']) {
	// echo "<pre>";
	// var_dump($_POST);
	// echo "</pre>";
	// $hora_despacho = date('h:m:s');
	$conexion = new Conexion();
	$sql = "DELETE FROM alistamientos WHERE id_alistamiento=$_GET[id_delete_alistamiento]";
		
		$conectando = $conexion->conectar()->query($sql);
		if ($conectando) {			
			echo "
			<script>
				alert('Eliminado con exito');
				location.href = ('../ver-alistamientos');
			</script>
			";
		}
	}

	#Subir Firma
if (@$_POST['subir-firma']=='subir-firma') {
	// echo "<pre>";
	// var_dump($_POST);
	// echo "</pre>";
	// $hora_despacho = date('h:m:s');
	$conexion = new Conexion();
	$file = $_FILES['file']['tmp_name'];
	$nameFile = $_FILES['file']['name'];
	$sql = "UPDATE usuarios SET firma='$nameFile' WHERE id_usuario=$_SESSION[id_usuario]";
	$destino = "../img/firma/".$nameFile;
	$envioFile = move_uploaded_file($file, $destino);
		
		if ($envioFile) {	
			$conectando = $conexion->conectar()->query($sql);
			$_SESSION['firma'] = $nameFile;		
			if ($conectando) {			
				echo "
				<script>
					alert('Subio la Firma con exito');
					location.href = ('../crear-alistamiento');
				</script>
				";
			}
		}
	}

	#editar usuario
if (@$_POST['editar-usuario'] == 'editar-usuario') {
	// echo "<pre>";
	// var_dump($_POST);
	// echo "</pre>";
	// $hora_despacho = date('h:m:s');
	$conexion = new Conexion();
	$sql = "UPDATE usuarios SET
	nombre='$_POST[nombre]',
	apellido=	'$_POST[apellido]',
	email=	'$_POST[email]', 
	password=	'$_POST[clave]'
	WHERE id_usuario=$_SESSION[id_usuario]";
		
		$conectando = $conexion->conectar()->query($sql);
		if ($conectando) {			
			echo "
			<script>
				alert('Actualizado con exito');
				location.href = ('../datos-user');
			</script>
			";
		}
	}
}
else
{
	header('location: ../index');
}
?>