<?php

require_once "ConexionBD.php";

class PacientesM extends ConexionBD{

	//Crear Pacientes
	static public function CrearPacienteM($tablaBD, $datosC){

		$pdo = ConexionBD::cBD()->prepare(
			"INSERT INTO $tablaBD(
			apellido, 
			nombre, 
			documento,

			correo, 
			telefono,
			direccion,
			ciudad,
			fnacimiento,
			sexo,
			
			usuario, 
			clave, 
			rol) 
			VALUES (
				:apellido, 
				:nombre, 
				:documento, 

				:correo,
				:telefono,
				:direccion,
				:ciudad,
				:fnacimiento,
				:sexo,

				:usuario, 
				:clave, 
				:rol)");

		$pdo -> bindParam(":apellido", $datosC["apellido"], PDO::PARAM_STR);
		$pdo -> bindParam(":nombre", $datosC["nombre"], PDO::PARAM_STR);
		$pdo -> bindParam(":documento", $datosC["documento"], PDO::PARAM_STR);
		
		$pdo -> bindParam(":correo", $datosC["correo"], PDO::PARAM_STR);		
		$pdo -> bindParam(":telefono", $datosC["telefono"], PDO::PARAM_STR);
		$pdo -> bindParam(":direccion", $datosC["direccion"], PDO::PARAM_STR);
		$pdo -> bindParam(":ciudad", $datosC["ciudad"], PDO::PARAM_STR);
		$pdo -> bindParam(":fnacimiento", $datosC["fnacimiento"], PDO::PARAM_STR);
		$pdo -> bindParam(":sexo", $datosC["sexo"], PDO::PARAM_STR);
		
		$pdo -> bindParam(":usuario", $datosC["usuario"], PDO::PARAM_STR);
		$pdo -> bindParam(":clave", $datosC["clave"], PDO::PARAM_STR);
		$pdo -> bindParam(":rol", $datosC["rol"], PDO::PARAM_STR);

		if($pdo -> execute()){
			return true;
		}

		$pdo -> close();
		$pdo = null;

	}



	//Mostrar Pacientes
	static public function VerPacientesM($tablaBD, $columna, $valor){

		if($columna == null){

			$pdo = ConexionBD::cBD()->prepare("SELECT * FROM $tablaBD ORDER BY apellido ASC");

			$pdo -> execute();

			return $pdo -> fetchAll();

		}else{

			$pdo = ConexionBD::cBD()->prepare("SELECT * FROM $tablaBD WHERE $columna = :$columna ORDER BY apellido ASC");

			$pdo -> bindParam(":".$columna, $valor, PDO::PARAM_STR);

			$pdo -> execute();

			return $pdo -> fetch();

		}

		$pdo -> close();
		$pdo = null;

	}



	//Borrar Paciente
	static public function BorrarPacienteM($tablaBD, $id){

		$pdo = ConexionBD::cBD()->prepare("DELETE FROM $tablaBD WHERE id = :id");

		$pdo -> bindParam(":id", $id, PDO::PARAM_INT);

		if($pdo -> execute()){
			return true;
		}

		//$pdo -> close();
		$pdo = null;

	}



	//Actualizar Paciente
	static public function ActualizarPacienteM($tablaBD, $datosC){

		$pdo = ConexionBD::cBD()->prepare("UPDATE $tablaBD SET 
		apellido = :apellido, 
		nombre = :nombre, 
		documento = :documento, 
		
		correo = :correo,
		telefono = :telefono,
		direccion = :direccion,
		ciudad = :ciudad,
		fnacimiento = :fnacimiento,
		sexo = :sexo,
		
		usuario = :usuario, 
		clave = :clave WHERE id = :id");

		$pdo -> bindParam("id", $datosC["id"], PDO::PARAM_INT);
		$pdo -> bindParam("apellido", $datosC["apellido"], PDO::PARAM_STR);
		$pdo -> bindParam("nombre", $datosC["nombre"], PDO::PARAM_STR);
		$pdo -> bindParam("documento", $datosC["documento"], PDO::PARAM_STR);

		$pdo -> bindParam("correo", $datosC["correo"], PDO::PARAM_STR);
		$pdo -> bindParam("telefono", $datosC["telefono"], PDO::PARAM_STR);
		$pdo -> bindParam("direccion", $datosC["direccion"], PDO::PARAM_STR);
		$pdo -> bindParam("ciudad", $datosC["ciudad"], PDO::PARAM_STR);
		$pdo -> bindParam("fnacimiento", $datosC["fnacimiento"], PDO::PARAM_STR);
		$pdo -> bindParam("sexo", $datosC["sexo"], PDO::PARAM_STR);

		$pdo -> bindParam("usuario", $datosC["usuario"], PDO::PARAM_STR);
		$pdo -> bindParam("clave", $datosC["clave"], PDO::PARAM_STR);

		if($pdo -> execute()){
			return true;
		}

		$pdo -> close();
		$pdo = null;

	}



	//Ingreso de los Pacientes
	static public function IngresarPacienteM($tablaBD, $datosC){

		$pdo = ConexionBD::cBD()->prepare("SELECT 
		usuario, 
		clave, 
		apellido, 
		nombre,
		documento, 

		correo,
		telefono,
		direccion,
		ciudad,
		fnacimiento,
		sexo,
		
		foto, 
		rol, 
		id 
		FROM $tablaBD WHERE 
		usuario = :usuario");

		$pdo -> bindParam(":usuario", $datosC["usuario"], PDO::PARAM_STR);

		$pdo -> execute();

		return $pdo -> fetch();

		//$pdo -> close();
		$pdo = null;

	}



	//Ver Perfil del Paciente
	static public function VerPerfilPacienteM($tablaBD, $id){

		$pdo = ConexionBD::cBD()->prepare("SELECT 
		usuario, 
		clave, 
		nombre,
		apellido, 
		
		correo, 
		telefono,
		direccion,
		ciudad,
		fnacimiento,
		sexo,

		foto,
		documento, 
		rol, 
		id FROM $tablaBD WHERE id = :id");

		$pdo -> bindParam(":id", $id, PDO::PARAM_INT);

		$pdo -> execute();

		return $pdo -> fetch();

		//$pdo -> close();
		$pdo = null;

	}

		//Ver Perfil del Paciente
		static public function VerPerfilDiagnosticoPacienteM($tablaBD, $id){

			$pdo = ConexionBD::cBD()->prepare("SELECT 
			nombre,
			apellido, 
			documento, 
			
			sexo,
			correo, 
			telefono,
			direccion,
			ciudad,
			fnacimiento,
			foto,
			id FROM $tablaBD WHERE id = :id");
	
			$pdo -> bindParam(":id", $id, PDO::PARAM_INT);
	
			$pdo -> execute();
	
			return $pdo -> fetch();
	
			//$pdo -> close();
			$pdo = null;
	
		}



	//Actualizar perfil del Paciente
	static public function ActualizarPerfilPacienteM($tablaBD, $datosC){

		$pdo = ConexionBD::cBD()->prepare("UPDATE $tablaBD SET 
		usuario = :usuario, 
		clave = :clave, 
		nombre = :nombre, 
		apellido = :apellido, 
		
		correo = :correo, 
		telefono = :telefono,
		direccion = :direccion,
		ciudad = :ciudad,
		fnacimiento = :fnacimiento,
		sexo = :sexo,
		 
		documento = :documento,
		foto = :foto WHERE id = :id");

		$pdo -> bindParam(":id", $datosC["id"], PDO::PARAM_INT);
		$pdo -> bindParam(":usuario", $datosC["usuario"], PDO::PARAM_STR);
		$pdo -> bindParam(":clave", $datosC["clave"], PDO::PARAM_STR);
		$pdo -> bindParam(":nombre", $datosC["nombre"], PDO::PARAM_STR);
		$pdo -> bindParam(":apellido", $datosC["apellido"], PDO::PARAM_STR);
		$pdo -> bindParam(":correo", $datosC["correo"], PDO::PARAM_STR);

		$pdo -> bindParam(":telefono", $datosC["telefono"], PDO::PARAM_STR);
		$pdo -> bindParam(":direccion", $datosC["direccion"], PDO::PARAM_STR);
		$pdo -> bindParam(":ciudad", $datosC["ciudad"], PDO::PARAM_STR);
		$pdo -> bindParam(":fnacimiento", $datosC["fnacimiento"], PDO::PARAM_STR);
		$pdo -> bindParam(":sexo", $datosC["sexo"], PDO::PARAM_STR);
		
		$pdo -> bindParam(":documento", $datosC["documento"], PDO::PARAM_STR);
		$pdo -> bindParam(":foto", $datosC["foto"], PDO::PARAM_STR);

		if($pdo -> execute()){
			return true;
		}

		//$pdo -> close();
		$pdo = null;

	}


}