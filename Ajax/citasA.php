<?php

require_once "../Controladores/citasC.php";
require_once "../Modelos/citasM.php";

class CitasA{

	public $Cid;

	public function estadoCitaA(){

		$columna = "id";
		$valor = $this->Cid;

		$resultado = CitasC::VerCitasC($columna, $valor);

		echo json_encode($resultado);

	}


}


if(isset($_POST["Cid"])){

	$cambiarEstadoC = new CitasA();
	$cambiarEstadoC -> Cid = $_POST["Cid"];
	$cambiarEstadoC -> estadoCitaA();

}


