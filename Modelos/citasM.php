<?php

require_once "ConexionBD.php";

class CitasM extends ConexionBD{

	//Pedir Cita Paciente
	static public function EnviarCitaM($tablaBD, $datosC){

		$pdo = ConexionBD::cBD()->prepare("INSERT INTO $tablaBD (
			id_doctor, 
			id_consultorio, 
			id_paciente, 
			estado,
			nyaP, 
			documento, 
			inicio, 
			fin
			
			) VALUES (
				:id_doctor, 
				:id_consultorio, 
				:id_paciente, 
				:estado,
				:nyaP, 
				:documento, 
				:inicio, 
				:fin
				)");

		$pdo -> bindParam(":id_doctor", $datosC["Did"], PDO::PARAM_INT);
		$pdo -> bindParam(":id_consultorio", $datosC["Cid"], PDO::PARAM_INT);
		$pdo -> bindParam(":id_paciente", $datosC["Pid"], PDO::PARAM_INT);
		$pdo -> bindParam(":estado", $datosC["estado"], PDO::PARAM_STR);
		$pdo -> bindParam(":nyaP", $datosC["nyaC"], PDO::PARAM_STR);
		$pdo -> bindParam(":documento", $datosC["documentoC"], PDO::PARAM_STR);
		$pdo -> bindParam(":inicio", $datosC["fyhIC"], PDO::PARAM_STR);
		$pdo -> bindParam(":fin", $datosC["fyhFC"], PDO::PARAM_STR);
		

		if($pdo->execute()){
			return true;
		}

		$pdo -> close();
		$pdo = null;

	}



	//Mostrar Citas
	static public function VerCitasM($tablaBD){

		$pdo = ConexionBD::cBD()->prepare("SELECT * FROM $tablaBD");

		$pdo -> execute();

		return $pdo -> fetchAll();

		$pdo -> close();
		$pdo = null;

	}

		//Mostrar Citas
		static public function VerAgendaM($tablaBD){

			$pdo = ConexionBD::cBD()->prepare("SELECT * FROM $tablaBD");
	
			$pdo -> execute();
	
			return $pdo -> fetchAll();
	
			$pdo -> close();
			$pdo = null;
	
		}

		//Mostrar Citas
		static public function ContarEspecialidadesM($tablaBD){

			//$pdo = ConexionBD::cBD()->prepare("SELECT COUNT(*) FROM $tablaBD  WHERE id_consultorio = '1' AND estado = 'Reservada'" );
			$pdo = ConexionBD::cBD()->prepare("SELECT * FROM $tablaBD ");
	
			$pdo -> execute();
	
			return $pdo -> fetchAll();
	
			$pdo -> close();
			$pdo = null;
	
		}

		static public function MedicoAtencionesM($tablaBD){

			//$pdo = ConexionBD::cBD()->prepare("SELECT COUNT(*) FROM $tablaBD  WHERE id_consultorio = '1' AND estado = 'Reservada'" );
			$pdo = ConexionBD::cBD()->prepare("SELECT * FROM $tablaBD");
	
			$pdo -> execute();
	
			return $pdo -> fetchAll();
	
			$pdo -> close();
			$pdo = null;
	
		}

		static public function MedicoEspAtencionesM($tablaBD){

			//$pdo = ConexionBD::cBD()->prepare("SELECT COUNT(*) FROM $tablaBD  WHERE id_consultorio = '1' AND estado = 'Reservada'" );
			$pdo = ConexionBD::cBD()->prepare("SELECT * FROM $tablaBD ORDER BY especialidad ASC");
	
			$pdo -> execute();
	
			return $pdo -> fetchAll();
	
			$pdo -> close();
			$pdo = null;
	
		}

		static public function MesAtendidosM($tablaBD){

			$pdo = ConexionBD::cBD()->prepare("SELECT * FROM $tablaBD ");
	
			$pdo -> execute();
	
			return $pdo -> fetchAll();
	
			$pdo -> close();
			$pdo = null;
	
		}
		
		


	//Pedir cita como doctor
	static public function PedirCitaDoctorM($tablaBD, $datosC){

		$pdo = ConexionBD::cBD()->prepare("INSERT INTO $tablaBD (
			id_doctor, 
			id_consultorio, 
			id_paciente,
			nyaP, 
			documento, 
			inicio, 
			fin) VALUES (
				:id_doctor, 
				:id_consultorio, 
				:id_paciente,
				:nyaP, 
				:documento, 
				:inicio, 
				:fin)"); 

		$pdo -> bindParam(":id_doctor", $datosC["Did"], PDO::PARAM_INT);
		$pdo -> bindParam(":id_consultorio", $datosC["Cid"], PDO::PARAM_INT);
		$pdo -> bindParam(":id_paciente", $datosC["Pid"], PDO::PARAM_INT);
		$pdo -> bindParam(":nyaP", $datosC["nombreP"], PDO::PARAM_STR);
		$pdo -> bindParam(":documento", $datosC["documentoP"], PDO::PARAM_STR);
		$pdo -> bindParam(":inicio", $datosC["fyhIC"], PDO::PARAM_STR);
		$pdo -> bindParam(":fin", $datosC["fyhFC"], PDO::PARAM_STR);

		if($pdo->execute()){
			return true;
		}

		$pdo -> close();
		$pdo = null;

	}

	static public function ActualizarEstadoCitaM($tablaBD, $datosC){
		
		
		$pdo = ConexionBD::cBD()->prepare("UPDATE $tablaBD SET
			estado = :estado WHERE id = :id");
		
		$pdo -> bindParam("id", $datosC["id"], PDO::PARAM_INT);
		$pdo -> bindParam("estado", $datosC["estado"], PDO::PARAM_STR);
		
		
		if($pdo->execute()){
			return true;
		}

		$pdo -> close();
		$pdo = null;

	}

}