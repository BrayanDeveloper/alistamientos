<?php 
session_start();
	header('Content-type:application/xls');
	header('Content-Disposition: attachment; filename=reporte_de_usuario_'.$_SESSION['username'].'_fecha_'. date('Y-m-d') .'.xls');

	require_once('funciones/conexion.php');
	$conexion = new Conexion();

?>                    
                        <table width="100%" style="font-size: 14px;">
                            
                           <tr>
                            <td></td>
                            <td></td>
                               <td style="font-size: 12px;">ALISTAMIENTOS TOTALES</td>
                           </tr>
                           <tr>
                             <td></td>
                            <td></td>
                               <th style="font-size: 12px;"></th>
                           </tr>
                           <tr>
                             <th>FECHA INSPECCION</th>
                             <th>HORA INSPECCION</th>
                             <th>ALISTAMIENTO #</th>
                             <th>DISTRIBUCION</th>
                             <th>TIPO ALISTAMIENTO</th>
                             <th>USUARIO</th>
                             <th>PLACA</th>
                             <th># INTERNO</th>
                             <th>CANTIDAD PUESTOS</th>
                             <th>CLASE VEHICULO</th>
                             <th>VALOR</th>
                             <th>HORA DESPACHO</th>
                             <th>RUTA OPERATIVA</th>
                             <th>KILOMETRAJE</th>
                             <th>EMPRESA VEHICULO</th>
                             <th>CEDULA PROPIETARIO</th>
                             <th>NOMBRE PROPIETARIO</th>
                             <th>CEDULA CONDUCTOR</th>
                             <th>NOMBRE CONDUCTOR</th>
                             <th>ESTADO FINAL</th>
                             <th>OBSERVACION FINAL</th>
                           </tr>
    
                       <?php 
                            $sql = "SELECT * FROM alistamientos";
                                
                                $conectando = $conexion->conectar()->query($sql);
                                if ($conectando) {
                                    foreach ($conectando as $key) {
                                ?>
                        
                           <tr>
                               <td><?php echo $key['fecha_inspeccion']; ?></td>
                               <td><?php echo $key['hora_inspeccion']; ?></td>
                               <td><?php echo $key['n_alistamiento']; ?></td>
                               <td><?php echo $key['distribuccion']; ?></td>
                               <td><?php echo $key['tipo_alistamiento']; ?></td>
                               <td><?php echo $key['usuario_alistamiento']; ?></td>
                               <td><?php echo $key['placa']; ?></td>
                               <td><?php echo $key['n_interno']; ?></td>
                               <td><?php echo $key['cantidad_puestos']; ?></td>
                               <td><?php echo $key['clase_vehiculo']; ?></td>
                               <td><?php echo $key['valor']; ?></td>
                               <td><?php echo $key['hora_despacho']; ?></td>
                               <td><?php echo $key['ruta_operativa']; ?></td>
                               <td><?php echo $key['kilometraje']; ?></td>
                               <td><?php echo $key['empresa_vehiculo']; ?></td>
                               <td><?php echo $key['cedula_propietario']; ?></td>
                               <td><?php echo $key['nombre_propietario']; ?></td>
                               <td><?php echo $key['cedula_conductor']; ?></td>
                               <td><?php echo $key['nombre_conductor']; ?></td>
                               <td><?php echo $key['estado_final']; ?></td>
                               <td><?php echo $key['observacion_general']; ?></td>
                           </tr>
                           
                       
                       <?php 
                                    }

                                }
                        ?>
                                    </table>
                     
                    </div>        
                            


                 