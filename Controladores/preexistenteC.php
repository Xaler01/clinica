<?php

class PreexistenteC{

	//Crear preexistente
	public function CrearPreexistenteC(){
		
		if(isset($_POST["preexistenteN"])){

			$tablaBD = "preexistente";
			$idpaciente = $_SESSION["id"];

			$datosC = array("nombre"=>$_POST["preexistenteN"], 
								  "idpaciente"=>$idpaciente);
			
			//echo'<script type="text/javascript">  alert("Llega bien hasta aqui"); </script>';
			$resultado = PreexistenteM::CrearPreexistenteM($tablaBD, $datosC);

			if($resultado == true){
				//echo'<script type="text/javascript">  alert("Se creo correctamente el consultorio"); </script>';	
				echo '<script>

				window.location = "http://localhost/clinica/preexistentes/'.$_SESSION["id"].'";
				</script>';	

			}

		}

	}


	//Ver enfermedades preexistentes
	static public function VerPreexistenteC($columna, $valor){

		$tablaBD = "preexistente";

		$resultado = PreexistenteM::VerPreexistenteM($tablaBD, $columna, $valor);

		return $resultado;

	}



	//Borrar Consultorios
	public function BorrarPreexistenteC(){

		if(substr($_GET["url"], 14)){

			$tablaBD = "preexistente";

			$id = substr($_GET["url"], 14);

			$resultado = PreexistenteM::BorrarPreexistenteM($tablaBD, $id);

			if($resultado == true){

				echo '<script>

				window.location = "http://localhost/clinica/preexistentes/'.$_SESSION["id"].'";
				</script>';

			}

		}

	}




	//Editar Preexistentes
	public function EditarPreexistenteC(){

		$tablaBD = "preexistente";

		$id = substr($_GET["url"], 4);

		$resultado = PreexistenteM::EditarPreexistenteM($tablaBD, $id);

		echo '<div class="form-group">
						
				<h2>Nombre:</h2>

				<input type="text" class="form-control input-lg" name="preexistenteE" value="'.$resultado["nombre"].'">
				<input type="hidden" class="form-control input-lg" name="Preid" value="'.$resultado["id"].'">

				<br>

				<button class="btn btn-success" type="submit">Guardar Cambios</button>

			</div>';

	}




	//Actualizar Consultorios
	public function ActualizarPreexistenteC(){

		if(isset($_POST["preexistenteE"])){

			$tablaBD = "preexistente";

			$datosC = array("id"=>$_POST["Preid"], "nombre"=>$_POST["preexistenteE"]);

			$resultado = PreexistenteM::ActualizarPreexistenteM($tablaBD, $datosC);

			if($resultado == true){

				echo '<script>

				window.location = "http://localhost/clinica/preexistentes/'.$_SESSION["id"].'";
				</script>';

			}

		}

	}



}