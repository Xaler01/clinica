<?php

class CitasC{

	//Pedir Cita Paciente
	public function EnviarCitaC(){

		if(isset($_POST["Did"])){

			$tablaBD = "citas";

			$Did = substr($_GET["url"], 7);

			$datosC = array(
				"Did"=>$_POST["Did"], 
				"Pid"=>$_POST["Pid"], 
				"estado"=>$_POST["estado"],
				"nyaC"=>$_POST["nyaC"], 
				
				"Cid"=>$_POST["Cid"], 
				"documentoC"=>$_POST["documentoC"], 
				"fyhIC"=>$_POST["fyhIC"], 
				"fyhFC"=>$_POST["fyhFC"]);

			$resultado = CitasM::EnviarCitaM($tablaBD, $datosC);

			if($resultado == true){

				echo '<script>

				window.location = "Doctor/"'.$Did.';
				</script>';

			}

		}

	}




	//Mostrar Citas
	public function VerCitasC(){

		$tablaBD = "citas";

		$resultado = CitasM::VerCitasM($tablaBD);

		return $resultado;

	}

	//Mostrar Agenda
	public function VerAgendaC(){

		$tablaBD = "citas";

		$resultado = CitasM::VerAgendaM($tablaBD);

		return $resultado;

	}		

	
	public function ContarEspecialidadesC(){

		$tablaBD = "especialidad_atendidos";

		$resultado = CitasM::ContarEspecialidadesM($tablaBD);

		return $resultado;

	}

	public function MedicoAtencionesC(){

		$tablaBD = "medico_atenciones";

		$resultado = CitasM::MedicoAtencionesM($tablaBD);

		return $resultado;

	}
	public function MedicoEspAtencionesC(){

		$tablaBD = "medico_especialidad_atenciones";

		$resultado = CitasM::MedicoEspAtencionesM($tablaBD);

		return $resultado;

	}
	

	//Pedir cita como doctor
	public function PedirCitaDoctorC(){

		if(isset($_POST["Did"])){

			$tablaBD = "citas";

			$Did = substr($_GET["url"], 6);

			$datosC = array(
				"Did"=>$_POST["Did"],
				"Pid"=>$_POST["Pid"],
				"nombreP"=>$_POST["nombreP"], 
				"Cid"=>$_POST["Cid"], 
				"documentoP"=>$_POST["documentoP"], 
				"fyhIC"=>$_POST["fyhIC"], 
				"fyhFC"=>$_POST["fyhFC"]);

			$resultado = CitasM::PedirCitaDoctorM($tablaBD, $datosC);

			if($resultado == true){

				echo '<script>

				window.location = "Citas/"'.$Did.';
				</script>';

			}

		}

	}

	//Pedir Cita Paciente
	public function ActualizarEstadoCitaC(){
		
		if(isset($_POST["Cid"])){
			
			$tablaBD = "citas";

			$Citaid = substr($_GET["url"], 12);

			$datosC = array(
				"id"=>$Citaid,
				"estado"=>$_POST["estadoC"]				
				);
				
				
			$resultado = CitasM::ActualizarEstadoCitaM($tablaBD, $datosC);
			
			if($resultado == true){
				
				
				echo '<script>
				
				window.location = "diagnostico/"'.$Citaid.';
				</script>';

			}
		}

	}

}