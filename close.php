<?php 
session_start();
if ($_SESSION['username']) {
	$destruir = session_destroy();
	if ($destruir) {
		header('location: index');
	}
}
?>