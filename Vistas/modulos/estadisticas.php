<?php

if($_SESSION["rol"] != "Administrador"){

	echo '<script>

	window.location = "inicio";
	</script>';

	return;

}


?>

<div class="content-wrapper">
	
	<section class="content-header">
		
		<h1>Estadisticas</h1>

	</section>

	<section class="content">
		
		<div class="box">
			
			<div class="box-body">
            <b>Reporte Especialidad-Citas</b><br><br>
				<table class="table table-bordered table-hover table-striped dt-responsive DT">
                
					<!--//Menu con los datos que se van a mostrar-->
					<thead>
						
						<tr>
							<th>Num</th>
							<th>Especialidad</th>
                            <th>Reservada</th>
							<th>Atendidas</th>
                            <th>No Atendidas</th>
                            <th>Paciente no acude</th>
							

						</tr>

					</thead>

					<tbody>

						<?php
							                                                    
                            $columna = null; // Indica el nombre de la columna que se quiere buscar el id del consultorio
                            $valor = null; // Envia el id del consultorio que busca el id del consultorio
                            $consultorio = ConsultoriosC::VerConsultoriosC($columna, $valor);
                            foreach ($consultorio as $key => $consultorio) {
                            echo'<tr>
                                    <td>'.($key+1).'</td>
                                    <td>'.$consultorio["nombre"].'</td> ';                               
                                }    
                                
                            
                            
                                $resultado = CitasC::ContarEspecialidadesC();

                            foreach ($resultado as $key => $value) {
                                echo'
                                <td>'.$resultado.'</td>';
                            }


        

                                    
                             echo' </tr>';
                            

                           
                           
						?>
                        

					</tbody>

                    <tfoot>
                        <div class="row no-print">
        
                        <div class="col-xs-12">
                            <a href="invoice-print.html" target="_blank" class="btn btn-default"><i class="fa fa-print"></i> Print</a>
                            
                            <button type="button" class="btn btn-primary pull-right" style="margin-right: 5px;">
                                <i class="fa fa-download"></i> Generate PDF
                            </button>
                            </div>

                    </tfoot>

				</table>

			</div>

		</div>

	</section>

</div>

