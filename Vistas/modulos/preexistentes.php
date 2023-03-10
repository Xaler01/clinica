<?php

if($_SESSION["rol"] != "Paciente" &&  $_SESSION["id"] != substr($_GET["url"], 14)){

	echo '<script>

	window.location = "inicio";
	</script>';

	return;

}

?>

<div class="content-wrapper">

	<section class="content-header">

		<h1>Gestor de Enfermedades preexistentes</h1>

	</section>

	<section class="content">

		<div class="box">

			<div class="box-header">

				<form method="post">

					<div class="col-md-6 col-xs-12">
						<input type="text" class="form-control" name="preexistenteN" placeholder="Ingrese nueva Enfermedad" required>
					</div>

					<button type="submit" class="btn btn-primary">Ingresar nueva enfermedad</button>

				</form>
						
				<?php
						
						$crearC = new PreexistenteC();						
						$crearC->CrearPreexistenteC();

					?>		

			</div>


			<div class="box-body">

				<table class="table table-bordered table-hover table-striped">

					<thead>

						<tr>

							<th>N°</th>
							<th>Nombre</th>
							<th>Editar </th>

						</tr>

					</thead>

					<tbody>

						<?php

						$columna = null;
						$valor = null;

						$resultado = PreexistenteC::VerPreexistenteC($columna, $valor);

						foreach ($resultado as $key => $value) {

							echo '<tr>
							
									<td>' . ($key + 1) . '</td>

									<td>' . $value["nombre"] . '</td>

									<td>
										
										<div class="btn-group">
											
											<a href="http://localhost/clinica/E-P/' . $value["id"] . '">
												<button class="btn btn-success"><i class="fa fa-pencil"></i> Editar</button>
											</a>

											
										</div>

									</td>

								</tr>';
						
							}


						?>



					</tbody>

				</table>

			</div>

		</div>

	</section>

</div>


<?php


