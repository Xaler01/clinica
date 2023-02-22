<?php
if($_SESSION["rol"] != "Doctor"  ){

	echo '<script>

	window.location = "inicio";
	</script>';

	return;

}
?>

<div class="content-wrapper">

  <!-- Main content -->
  <section class="invoice">
    <!-- info Datos datos Cabecera -->
      <div class="row invoice-info">
      
      <!-- info Datos del paciente-->
      <div class="col-sm-6 invoice-col">     
        <strong>Datos del Paciente:</strong>
        <address>
          <?php  
            $datoscita = CitasC::VerCitasC();
            foreach ($datoscita as $key => $dcitas) {
              
              if($_SESSION["id"]==$dcitas["id_doctor"] &&$dcitas["id"] == substr($_GET["url"], 12) ) {
                    
              $columna = "id";
              $valor = $dcitas["id_paciente"];
              $paciente = PacientesC::VerPacientesC($columna, $valor);
              $fecha_nacimiento = $paciente['fnacimiento'];
                $fecha_actual = date('Y-m-d');
                $edad = date_diff(date_create($fecha_nacimiento), date_create($fecha_actual));
              echo '<b>Nombre P: </b><td>'.$paciente["nombre"].' '.$paciente["apellido"].'</td><br>

                    <b>Edad: </b><td>'. $edad->format('%y años') .'</td> <br>

                    <b>Género: </b><td>'.$paciente["sexo"].'</td><br>
                    <b>C.I: </b><td>'.$paciente["documento"].'</td><br>
                  <b>Correo: </b><td>'.$paciente["correo"].'</td><br>
                  <b>Teléfono: </b><td>'.$paciente["telefono"].'</td>';
              }
            }
          ?>
        </address>
      </div>
      <!-- info FIN Datos del paciente-->
      
      <!-- info Datos del Doctor-->
      <div class="col-sm-4 invoice-col">
        <strong>Datos del Doctor:</strong>
        <address>
          <?php 
            $datoscita = CitasC::VerCitasC();
            foreach ($datoscita as $key => $dcitas) 
            { 
              if($_SESSION["id"]==$dcitas["id_doctor"] &&$dcitas["id"] == substr($_GET["url"], 12) )
              {
                $columna = "id";
                $valor = $dcitas["id_doctor"];

                $doctor = DoctoresC::DoctorC($columna, $valor);

                $fecha_nacimiento = $doctor['fnacimiento'];
                $fecha_actual = date('Y-m-d');
                $edad = date_diff(date_create($fecha_nacimiento), date_create($fecha_actual));

                echo '<b>Nombre: </b><td>'.$doctor["nombre"].' '.$doctor["apellido"].'</td><br>

                          <b>Edad: </b><td>'. $edad->format('%y años') .' </td> <br>

                          <b>Género: </b><td>'.$doctor["sexo"].'</td><br>
                          <b>C.I: </b><td>'.$doctor["documento"].'</td><br>
                          <b>Correo: </b><td>'.$doctor["correo"].'</td><br>
                          <b>Teléfono: </b><td>'.$doctor["telefono"].'</td>';
              }
            }
          ?>
        
      </div>
      <!-- info FIN Datos del Doctor-->
      
      </div>
    <!-- /.Fin inf datos cabecera -->
  </section>

    <!-- Table Diagnostico -->
  <section class="content">

  <div class="box"> 

    <div  rol="dialog" id="EditarEstadoCita">

     <div id="bodyEstado">

      <form method="post" role="form"> 

        <div class="box-body">
          <!-- Split button -->

          <div class="form-group">

            <div class="row">
              
              <div class="col-xs-6">
                
                <p class="lead">Antecedentes Patológicos</p> 
                
                <div class="table-responsive">
                  
                  <table class="table">
                    <tr><th>Alergias:</th>
                    <td><input type="text" class="form-control input-lg" name="alergias"></td>
                    </tr>
                    
                    <tr><th style="width:50%">Patologías:</th>                    
                    <td><input type="text" class="form-control input-lg" name="patologias"></td>
                  </tr>
                  </table>
                </div>
              </div>
              <!-- /.col -->

              <div class="col-xs-6">

                <p class="lead">Diagnóstico</p>

                <div class="form-group">

                  <label for="diagnostico">Ingrese el diagnóstico del paciente:</label>

                  <textarea class="form-control input-lg" id="diagnostico" name="diagnostico" rows="3"></textarea>

                </div>
      
              </div>
              <!-- /.col -->
            </div>
            <!-- FIN Table Diagnostico -->

          <!-- Table RECETA -->
                <!-- 
                <div class="row">
                  <div class="col-xs-8 table-responsive">
                    <table class="table table-striped">
                      <thead>
                        <tr> <th colspan="4">
                            <p class="lead">Receta
                            

                              <?php
                                $datoscita = CitasC::VerCitasC();
                                foreach ($datoscita as $key => $dcitas)
                                {
                                  if($_SESSION["id"]==$dcitas["id_doctor"] &&$dcitas["id"] == substr($_GET["url"], 12) ) {
                                    echo'
                                    <button class="btn btn-primary btn-xs pull-right CrearItemReceta" id_cita="'.$dcitas["id"].'" data-toggle="modal" data-target="#CrearItemReceta">
                                    <i class="fa fa-plus"></i>
                                    </button>';


                                    }
                                }
                              ?>

                              
                            </p>
                          
                          </th>
                        </tr>
                        <tr>
                        <th>ID_receta</th>
                        <th>ID_cita</th>
                          <th>Producto</th>
                          <th>Cantidad</th>
                          <th>Fecha envío</th>
                          <th>Indicaciones</th>
                          <th></th>
                        </tr>
                      </thead>
                      <tbody>
                      
                        <?php

                          $columna = null;
                          $valor = null;

                          $resultado = CitasC::VerItemRecetaC($columna, $valor);  
                          
                          foreach ($resultado as $key => $value) {
                            //Datos de la tablas Doctores
                            echo '<tr>
                                <td>'.$value["id_receta"].'</td>
                                <td>'.$value["id_cita"].'</td>
                                <td>'.$value["producto"].'</td>
                                <td>'.$value["cantidad"].'</td>
                                <td>'.$value["fechareceta"].'</td>
                                <td>'.$value["indicaciones"].'</td>';
                          }
                        
                        ?>
                      
                      </tbody>
                    </table>
                  </div>
                  
                </div>
            /.row -->
          <!-- Table RECETA -->
                <!-- Table Estado de la atención 
                    ************************* desde esta parte

                      <div  rol="dialog" id="EditarEstadoCita">

                          <form method="post" role="form">
                            

                            <div id="bodyEstado">

                              <div class="box-body">
                                <!-- Split button 

                                <div class="form-group">
                        
                    ************************* hasta esta parte
                -->
            
            <p class="lead">Estado de la cita</p>
            <input type="hidden" id="Cid" name="Cid">
            <select  class="form-control input-lg" name="estadoC">
              <?php
                $datoscita = CitasC::VerCitasC();
                foreach ($datoscita as $key => $dcitas){
                    if($_SESSION["id"]==$dcitas["id_doctor"] &&$dcitas["id"] == substr($_GET["url"], 12) ) {
                    echo'<option>'.$dcitas["estado"].'</option>
                    <!--<option value="Reservada">Reservada</option>-->
                    <option value="Atendida">Atendida</option>
                    <option value="No Atendida">No Atendida</option>
                    <option value="nueva">Nueva</option>
                    <option value="Paciente no acude">Paciente no acude</option>';
                  }                         
                }
                          
              ?>
            </select>
                  
          </div>


        </div>

      </form>

     </div>
          
          <div class ="FM" id="footerEstado">
            
            <?php
              $datoscita = CitasC::VerCitasC();
             
              foreach ($datoscita as $key => $dcitas)
              {
                if($_SESSION["id"]==$dcitas["id_doctor"] &&$dcitas["id"] == substr($_GET["url"], 12) ) {

                  echo'<button type="submit" class="btn btn-success EditarEstadoCita" Cid="'.$dcitas["id"].'" data-target="#EditarEstadoCita" > Guardar Estado</button>';

                  $actualizarestado = new CitasC();
                  $actualizarestado -> ActualizarEstadoCitaC();
                  }
                  
              }
                          
            ?>
            
            
          </div>

       

       </form>    
    </div>
    <!-- FIN Table Estado de la atención -->

  </section>

</div>
<!-- ./wrapper -->





</--//Maquetado para ITEM EN RECETA-->
<div class="modal fade" rol="dialog" id="CrearItemReceta">
	
	<div class="modal-dialog">
		
		<div class="modal-content">
			
			<form method="post" role="form">
				
				<div class="modal-body">
					
					<div class="box-body">
						
						<div class="form-group">
							
							<h3>Productos:</h3>

              <input type="hidden" id="id_receta" name="id_receta">
              
              <input type="text" class="form-control input-lg" id="producto"  name="producto" required>

              

						</div>

						<div class="form-group">
							
							<h3>Cantidad:</h3>

							<input type="text" class="form-control input-lg"  id="cantidad" name="cantidad" required>

						</div>

            <div class="form-group">
							
							<h3>Fecha:</h3>

              <?php $today = date("Y-m-d"); ?>

							<input type="date" class="form-control input-lg"  id="fechareceta" name="fechareceta" value="<?php echo $today; ?>" required readonly>

						</div>

						<div class="form-group">
							
							<h3>Indicaciones:</h3>

              <textarea class="form-control input-lg" id="indicaciones" name="indicaciones" rows="3"></textarea>

						</div>

					</div>

				</div>


				<div class="modal-footer">
					
					<button type="submit" class="btn btn-primary">Guardar</button>

					<button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>

				</div>

				<?php

				$crear = new citasC();
				$crear -> CrearItemRecetaC();

				?>

			</form>

		</div>

	</div>

</div>






</--//Maquetado para CREAR DOCTORES-->
<div class="modal fade" rol="dialog" id="CrearDoctor">
	
	<div class="modal-dialog">
		
		<div class="modal-content">
			
			<form method="post" role="form">
				
				<div class="modal-body">
					
					<div class="box-body">
						
						<div class="form-group">
							
							<h3>Apellido:</h3>

							<input type="text" class="form-control input-lg" name="apellido" required>

							<input type="hidden" name="rolD" value="Doctor">

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

							<h3>Teléfono:</h3>

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
							
							<h3>Género:</h3>

							<select class="form-control input-lg" name="sexo">
								
								<option>Seleccionar...</option>

								<option value="Masculino">Masculino</option>
								<option value="Femenino">Femenino</option>

							</select>

						</div>

						<div class="form-group">
							
							<h3>Consultorio:</h3>

							<select class="form-control input-lg" name="consultorio">
								
								<option>Seleccionar...</option>

								<?php

								$columna = null;
								$valor = null;

								$resultado = ConsultoriosC::VerConsultoriosC($columna, $valor);

								foreach ($resultado as $key => $value) {
									
									echo '<option value="'.$value["id"].'">'.$value["nombre"].'</option>';

								}

								?>

							</select>

						</div>

						<div class="form-group">
							
							<h3>Usuario:</h3>

							<input type="text" class="form-control input-lg" name="usuario" required>

						</div>

						<div class="form-group">
							
							<h3>Contraseña:</h3>

							<input type="text" class="form-control input-lg" name="clave" required>

						</div>

					</div>

				</div>


				<div class="modal-footer">
					
					<button type="submit" class="btn btn-primary">Crear</button>

					<button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>

				</div>

				<?php

				$crear = new DoctoresC();
				$crear -> CrearDoctorC();

				?>

			</form>

		</div>

	</div>

</div>