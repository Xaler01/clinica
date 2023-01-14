<?php

if($_SESSION["rol"] != "Secretaria" && $_SESSION["rol"] != "Doctor" && $_SESSION["rol"] != "Administrador"){

	echo '<script>

	window.location = "inicio";
	</script>';

	return;

}


?>

<div class="content-wrapper">
	
	<section class="content-header">
		
		<h1>Gestor de Pacientes</h1>

	</section>

	<section class="content">
		
		<div class="box">
			
		</--//Boton crear Paciente, los doctores no pueden crear pacientes nuevos llama a la funcion CREAR -->
			<div class="box-header">
				
				<?php

					if($_SESSION["rol"] != "Doctor"){

						echo '<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#CrearPaciente">Crear Paciente</button>';

					}


				?>
				
				
				
			</div>

			</--// LEER la tabla con los pacientes creados en la tabla "pacientes" Muestra botones para EDITAR O ACTUALIZAR paciente y para BORRAR llamando a estas funciones -->
			<div class="box-body">
			</--//Tabla contenedora-->
			<table class="table table-bordered table-hover table-striped dt-responsive DT">
				</--//Cabecera de la tabla-->
				<thead>
					</--//Titulo de las columnas de la tabla-->
					<tr>
						
						<th>N°</th>
						<th>Nombre</th>
						<th>Apellido</th>
						<th>Identificación</th>

						<th>Correo</th>
						<th>Telefono</th>
						<th>Dirección</th>
						<th>Ciudad</th>
						<th>F. nacimimiento</th>
						<th>Genero</th>

						<th>Foto</th>
						<th>Usuario</th>
						<th>Contraseña</th>
						<th>Editar / Borrar</th>

					</tr>

				</thead>
				</--//Cuerpo de la tabla-->
				<tbody>

					<?php

						$columna = null;
						$valor = null;
						
						$resultado = PacientesC::VerPacientesC($columna, $valor);
						//Trae los datos de la tabla pacientes y llena la tabla
						foreach ($resultado as $key => $value) {
						
						echo '<tr>
				
								<td>'.($key+1).'</td>
								<td>'.$value["nombre"].'</td>
								<td>'.$value["apellido"].'</td>
								<td>'.$value["documento"].'</td>
								
								<td>'.$value["correo"].'</td>

								<td>'.$value["telefono"].'</td>
								<td>'.$value["direccion"].'</td>
								<td>'.$value["ciudad"].'</td>
								<td>'.$value["fnacimiento"].'</td>
								<td>'.$value["sexo"].'</td>

								';

								if($value["foto"] == ""){

									echo '<td><img src="Vistas/img/defecto.png" width="40px"></td>';

								}else{

									echo '<td><img src="'.$value["foto"].'" width="40px"></td>';

								}
								

								echo '<td>'.$value["usuario"].'</td>

								<td>'.$value["clave"].'</td>

								<td>
									
									<div class="btn-group">
										
										
										<button class="btn btn-success EditarPaciente" Pid="'.$value["id"].'" data-toggle="modal" data-target="#EditarPaciente"><i class="fa fa-pencil"></i> Editar</button>
										
										<button class="btn btn-danger EliminarPaciente" Pid="'.$value["id"].'" imgP="'.$value["foto"].'"><i class="fa fa-times"></i> Borrar</button>
										

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


</--//Maquetado para CREAR PACIENTES-->
<div class="modal fade" rol="dialog" id="CrearPaciente">
	
	<div class="modal-dialog">
		
		<div class="modal-content">
			
			<form method="post" role="form">
			</--//Formulario flotante para CREAR nuevo paciente, -->
				<div class="modal-body">
					
					<div class="box-body">
						
						<div class="form-group">
							
							<h3>Apellido:</h3>

							<input type="text" class="form-control input-lg" name="apellido" required>

							<input type="hidden" name="rolP" value="Paciente">

						</div>

						<div class="form-group">
							
							<h3>Nombre:</h3>

							<input type="text" class="form-control input-lg" name="nombre" required>

						</div>

						<div class="form-group">
							
							<h3>Identificación:</h3>

							<input type="text" class="form-control input-lg" name="documento" maxlength="10" required>

						</div>

						<div class="form-group">

							<h3>Correo:</h3>

							<input type="email" class="form-control input-lg" name="correo" required>

						</div>

						<div class="form-group">

							<h3>Telefono:</h3>

							<input type="text" class="form-control input-lg" name="telefono" maxlength="15" required>

						</div>

						<div class="form-group">

							<h3>Dirección:</h3>

							<input type="text" class="form-control input-lg" name="direccion" required>

						</div>

						<div class="form-group">

							<h3>Ciudad de residencia:</h3>

							<select class="form-control input-lg" name="ciudad" required>
								
								<option>Seleccionar...</option>

								<option value="El Oro">El Oro</option>
								<option value="Quito">Quito</option>
								<option value="Loja">Loja</option>
								<option value="Tulcan">Tulcan</option>
								<option value="Otra">Otra</option>

							</select>

						</div>

						<div class="form-group">

							<h3>Fecha de nacimiento:</h3>

							<input type="date" class="form-control input-lg" name="fnacimiento" required>

						</div>

						<div class="form-group">

							<h3>Genero:</h3>

							<select class="form-control input-lg" name="sexo">
								
								<option>Seleccionar...</option>

								<option value="Masculino">Masculino</option>
								<option value="Femenino">Femenino</option>

							</select>

						</div>


						<div class="form-group">
							
							<h3>Usuario:</h3>

							<input type="text" class="form-control input-lg" id="usuario" name="usuario" required>

						</div>

						<div class="form-group">
							
							<h3>Contraseña:</h3>

							<input type="text" class="form-control input-lg" name="clave" required>

						</div>

					</div>

				</div>

				</--//Botones para CREAR el nuevo paciente o CANCELAR-->
				<div class="modal-footer">
					
					<button type="submit" class="btn btn-primary">Crear</button>

					<button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>

				</div>

				<?php

				$crear = new PacientesC();
				$crear -> CrearPacienteC();

				?>

			</form>

		</div>

	</div>

</div>

</--//Maquetado para EDITAR PACIENTES-->
<div class="modal fade" rol="dialog" id="EditarPaciente">
	
	<div class="modal-dialog">
		
		<div class="modal-content">
			
			<form method="post" role="form">
				
				<div class="modal-body">
					</--Formulario para modificar paciente creado -->
					<div class="box-body">
						
						<div class="form-group">
							
						
							<h3>Apellido:</h3>

							<input type="text" class="form-control input-lg" id="apellidoE" name="apellidoE" required>

							<input type="hidden" id="Pid" name="Pid">

						</div>

						<div class="form-group">
							
							<h3>Nombre:</h3>

							<input type="text" class="form-control input-lg" id="nombreE" name="nombreE" required>

						</div>

						<div class="form-group">
							
							<h3>Identificación:</h3>

							<input type="text" class="form-control input-lg" id="documentoE" name="documentoE" maxlength="10" required>

						</div>

					
						<div class="form-group">
							
							<h3>Correo:</h3>

							<input type="mail" class="form-control input-lg" id="correoE" name="correoE" required>

						</div>

						<div class="form-group">
							
							<h3>Telefono:</h3>

							<input type="text" class="form-control input-lg" id="telefonoE" name="telefonoE" maxlength="15" required>

						</div>

						<div class="form-group">
							
							<h3>Dirección:</h3>

							<input type="text" class="form-control input-lg" id="direccionE" name="direccionE" required>

						</div>

						<div class="form-group">
							
							<h3>Ciudad de residencia:</h3>

							<select class="form-control input-lg" name="ciudadE" required>
								
								<option>Seleccionar...</option>

								<option value="El Oro">El Oro</option>
								<option value="Quito">Quito</option>
								<option value="Loja">Loja</option>
								<option value="Tulcan">Tulcan</option>
								<option value="Otra">Otra</option>

							</select>

						</div>

						<div class="form-group">
							
							<h3>Fecha de nacimiento:</h3>

							<input type="date" class="form-control input-lg" id="fnacimientoE" name="fnacimientoE" required>

						</div>

						<div class="form-group">
							
							<h3>Genero:</h3>

							<select class="form-control input-lg" name="sexoE">
								
								<option>Seleccionar...</option>

								<option value="Masculino">Masculino</option>
								<option value="Femenino">Femenino</option>

							</select>

						</div>
						
						<div class="form-group">
							
							<h3>Usuario:</h3>

							<input type="text" class="form-control input-lg" id="usuarioE" name="usuarioE" required>

						</div>

						<div class="form-group">
							
							<h3>Contraseña:</h3>

							<input type="text" class="form-control input-lg" id="claveE" name="claveE" required>

						</div>

					</div>

				</div>

				</--//Botones para GUARDAR CAMBIOS del paciente o CANCELAR	-->	
				<div class="modal-footer">
					
					<button type="submit" class="btn btn-success">Guardar Cambios</button>

					<button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>

				</div>

				<?php

				$actualizar = new PacientesC();
				$actualizar -> ActualizarPacienteC();

				?>

			</form>

		</div>

	</div>

</div>


<?php
//Eliminar Paciente
$borrarP = new PacientesC();
$borrarP -> BorrarPacienteC();