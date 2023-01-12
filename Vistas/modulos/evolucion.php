<?php

if($_SESSION["id"] != substr($_GET["url"], 10)){

	echo '<script>

	window.location = "inicio";
	</script>';

	return;

}


?>

<div class="content-wrapper">
	
	<section class="content-header">
		
		<h1>Evolución de pacientes</h1>

	</section>

	<section class="content">
		
		<div class="box">
			
			<div class="box-body">
				
				<table class="table table-bordered table-hover table-striped dt-responsive DT">
					<!--//Menu con los datos que se van a mostrar-->
					<thead>
						
						<tr>
							
							<th>Fecha cita</th>
							<th>Nombre Paciente</th>
                            <th>Documento</th>
							<th>Especialidad</th>
							<th>Evolución / Próxima Cita</th>

						</tr>

					</thead>

					<tbody>

						<?php
							//Permite ver los datos que se ingresan en el thead
                            $resultado = CitasC::VerCitasC();

                            foreach ($resultado as $key => $value) {
                                
								
                                if($_SESSION["id"]==$value["id_doctor"] && $value["id_paciente"]!=0){

                                    echo'<tr>

                                        <td>'.$value["inicio"].'</td>';

                                        $columna = "id";
                                        $valor = $value["id_paciente"];

                                        $paciente = PacientesC::VerPacientesC($columna, $valor);

                                       echo '<td>'.$paciente["apellido"].' '.$paciente["nombre"].' '.$value["id"].'</td>
                                        
                                        <td>
                                        '.$paciente["documento"].'
                                        </td>
										';
										$columna = "id";
									$valor = $value["id_consultorio"];

									$consultorio = ConsultoriosC::VerConsultoriosC($columna, $valor);

									echo '<td>'.$consultorio["nombre"].'</td>

										<!-- //Botones de EVOLUCION y PROXIMA CITA -->

                                        <td>
                                        
											<div class="btn-group">
												
											<a href="http://localhost/clinica/diagnostico"><button class="btn btn-success"  data-toggle="modal"><i class="fa fa-bed"></i> Evolución</button></a>
												
										
												
											<a href="http://localhost/clinica/Citas/'.$_SESSION["id"].'"><button class="btn btn-info" data-toggle="modal"><i class="fa fa-medkit" ></i> Próxima Cita</button></a>

											</div>
                                        
                                        </td>
                                        
                                    </tr>';


                                }
                                

                            }
                        
						?>
                        

					</tbody>

				</table>

			</div>

		</div>

	</section>

</div>

