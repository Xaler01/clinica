<?php

if($_SESSION["rol"] != "Doctor"){

	echo '<script>

	window.location = "inicio";
	</script>';

	return;

}

?>

<div class="content-wrapper">
	
	<section class="content-header">
		
		<h1>DIAGNOSTICO</h1>

	</section>


	<section class="content">
		
		<div class="box">
			
			<div class="box-body">
				
				<table class="table table-bordered table-hover table-striped dt-responsive DT">
					
					<thead>
						
						<tr>
                            <th>Cita</th>
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
                            $resultado = CitasC::VerCitasC();
                            
                            foreach ($resultado as $key => $citas) {

                                echo '
                                            ';
                                
                                if($_SESSION["id"]==$citas["id_doctor"]  ) {
								        $columna = "id";
                                        $valor = $citas["id_paciente"];

                                        $paciente = PacientesC::VerPacientesC($columna, $valor);

                                       if($citas["id_paciente"] == $paciente["id"]){

                                        echo'
                                        <tr>
                                                <td>'.$citas["id"].'</td>
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

                                    }   


                                }
                                

                            }
                        
						?>

						
						
					</tbody>

				</table>

			</div>

		</div>

	</section>

</div>