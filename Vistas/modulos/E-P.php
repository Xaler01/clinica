<?php

if($_SESSION["rol"] != "Paciente"){

	echo '<script>

	window.location = "inicio";
	</script>';

	return;

}

?>


<div class="content-wrapper">
	
	<section class="content-header">
		<h1>Editar Enfermedad  Preexistente</h1>
	</section>

	<section class="content">
		
		<div class="box">
			
			<div class="box-body">
				
				<form method="post">

					<?php

					$editarC = new PreexistenteC();
					$editarC -> EditarPreexistenteC();
					$editarC -> ActualizarPreexistenteC();

					?>
					
					

				</form>

			</div>

		</div>

	</section>

</div>