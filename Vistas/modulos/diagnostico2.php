<?php

if($_SESSION["rol"] != "Doctor"){

	echo '<script>

	window.location = "inicio";
	</script>';

	return;

}

?>

<div class="content-wrapper">
	
	<section class="content-header" id="headerdatospaciente">
        
		<h2>DIAGNOSTICO</h2>
        <h1>DATOS DEL PACIENTE</h1>
        
	</section>


	<section class="content" id="bodydatospaciente">
		
		<div class="box">
			
			<div class="box-body">
				
				<table class="table table-bordered table-hover table-striped dt-responsive DT">
					
					<thead>
						
						<tr>
                            <th>Turno</th>
							<th>Nombre</th>
							<th>Apellido</th>
                            <th>Identificación</th>
                            <th>Edad</th>
                            <th>Genero</th>

							<th>Correo</th>
                            <th>Telefono</th>
							<th>Dirección</th>
							<th>Ciudad</th>
							<th>F. nacimimiento</th>                            		
							<th>Foto</th>
                        
						</tr>

					</thead>

					<tbody>

						

                        <?php
							//Permite ver los datos que se ingresan en el thead
                            $datoscita = CitasC::VerCitasC();
                            
                            foreach ($datoscita as $key => $dcitas) {

                                echo '
                                            ';
                                
                                if($_SESSION["id"]==$dcitas["id_doctor"] &&$dcitas["id"] == substr($_GET["url"], 12) ) {
								        $columna = "id";
                                        $valor = $dcitas["id_paciente"];

                                        $paciente = PacientesC::VerPacientesC($columna, $valor);

                                     // if($citas["id_paciente"] == $paciente["id"]){

                                        echo'
                                        <tr>
                                                <td>'.$dcitas["id"].'</td>
                                                <td>'.$paciente["nombre"].'</td>
                                                <td>'.$paciente["apellido"].'</td>
                                                <td>'.$paciente["documento"].'</td>
                                                <td>24</td>
                                                <td>'.$paciente["sexo"].'</td>
                                                <td>'.$paciente["correo"].'</td>
                                                <td>'.$paciente["telefono"].'</td>
                                                <td>'.$paciente["direccion"].'</td>
                                                <td>'.$paciente["ciudad"].'</td>
                                                <td>'.$paciente["fnacimiento"].'</td>';
                                                
                                                if($paciente["foto"] == ""){
        
                                                    echo '<td><img src="Vistas/img/defecto.png" width="40px"></td>';
                                
                                                }else{
                                
                                                    echo '<td><img src="'.$resultado["foto"].'" width="40px"></td>';
                                
                                                }
                                        
                
                                            echo'
                                    </tr>';

                                   // }   


                                }
                                

                            }
                        
						?>

						
						
					</tbody>

				</table>

			</div>

		</div>

	</section>

    <section class="content-header" id="headeratencionpaciente">
		
        <h1>ATENCION  PACIENTE</h1>
	</section>

    <section class="content" id="bodyatencionpaciente">

        <div class="row">

            <div class="box-body">
                
                <table class="table table-bordered table-hover table-striped dt-responsive">

                    <tbody>
                    <?php
                        echo '
                            <tr>
                        
                                <th>Alergias:</th> <td>Alergia al frio</td>
                                <th>Antedecentes Patologicos:</th> <td>Varicela</td>
                            </tr>
                        
                            <tr>
                                <th>Diagnostico</th> <td>Infeccion Intestinal</td>
                                <th>Receta</th>       <td>Protector gastrico de 1mg</td>
                                                
                            </tr>
                            <tr>
                                <th>Indicaciones</th> <td>Tomar Protector Gastrico por la mañana por 3 dias</td>
                                <th>Estado</th>     <td>Atendido</td>
                            </tr>

                            <tr>
                                <th>Próxima Cita</th> <td>Calendario</td>
                                
                            </tr>

                        </thead>';
                    ?>;
                    <tbody>

                   
                    
                </table>


            </div>

        </div>

    </section>

</div>