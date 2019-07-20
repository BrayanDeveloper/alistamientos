<?php 
session_start();
if ($_SESSION['username']) {
	require 'funciones/conexion.php';
	require_once __DIR__ . '/librerias/pdf/vendor/autoload.php';
	
    $conexion = new Conexion();
	$sql = "SELECT * FROM alistamientos where id_alistamiento=$_GET[id]";
	$alistamientos = $conexion->conectar()->query($sql)->fetchAll();
	// <h1 style="text-aling:center;">COOTRANSUNIDOS</h1>
	foreach ($alistamientos as $alis) {
			$html = '
			<br>
			<H2>NIT: 890501119-7</H2>
			<h4>RESOLUCION: FECHA: </h4>
			<P>FECHA INSPECCION: '.$alis['fecha_inspeccion'].' HORA: '.$alis['hora_inspeccion'].'</P>
			<h5>#N ALISTAMIENTO: '.$alis['n_alistamiento'].'</h5>
			<p>USUARIO: '.$alis['usuario_alistamiento'].'</p>
			<h3>DETALLE DEL ALISTAMIENTO</h3>
			<P>PLACA: '.$alis['placa'].' N# INTERNO: '.$alis['n_interno'].'</P>
			<p>CANT_PUESTOS: '.$alis['cantidad_puestos'].'</p>
			<p>CLASE VEHICULO: '.$alis['clase_vehiculo'].'</p>
			<p>VALOR: '.$alis['valor'].'</p>
			<p>HORA DESPACHO: '.$alis['hora_despacho'].'</p>
			<p>RUTA OPERATIVA: '.$alis['ruta_operativa'].'</p>
			<p>KILOMETRAJE: '.$alis['kilometraje'].'</p>
			<p>EMPRESA VEHICULO: '.$alis['empresa_vehiculo'].'</p>
			<p>CEDULA PROPIETARIO: '.$alis['cedula_propietario'].'</p>
			<p>NOMBRE PROPIETARIO: '.$alis['nombre_propietario'].'</p>
			<p>CEDULA CONDUCTOR: '.$alis['cedula_conductor'].'</p>
			<p>NOMBRE CONDUCTOR: '.$alis['nombre_conductor'].'</p>
			<p>ESTADO FINAL: '.$alis['estado_final'].'</p>
			<p>OBSERVACION GENERAL: '.$alis['observacion_general'].'</p>
			<p>FIRMA: </p>
			
			';
	    }
	
	    $newHtml = $html;	

    
	
	    $mpdf = new \Mpdf\Mpdf(['format' => 'Legal']);

		$mpdf->WriteHTML($newHtml);

		$mpdf->Image('img/logo/logo.png', 10, 10, 60, 10, 'png', '', true, false);
		$mpdf->Image('img/firma/'.$_SESSION["firma"].'', 30, 220, 30, 10, 'jpg', '', true, false);
    	$mpdf->Output();
    
}

?>

