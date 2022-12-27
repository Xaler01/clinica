<?php

if($_SESSION["rol"] != "Doctor"){

	echo '<script>

	window.location = "inicio";
	</script>';

	return;

}

?>

<div class="content-wrapper">

	<section class="content">
		
		<div class="box">
			
			<div class="box-body">

				<?php

				$editarPerfil = new DoctoresC();
				$editarPerfil -> EditarPerfilDoctorC();
			    $editarPerfil -> ActualizarPerfilDoctorC();

				?>
				
				<!-- <form method="post" enctype="multipart/form-data">                   
                    
                    <div class="row">
                        
                        <div class ='col-md-6 col-xs-12'>

                            <h2>Nombre:</h2>
                            <input type="text" class="input-lg" name="nombrePerfil" value="">
                            <input type="hidden" name="Did" value="">

                            <h2>Apellido:</h2>
                            <input type="text" class="input-lg" name="apellidoPerfil" value="">

                            <h2>Usuario:</h2>
                            <input type="text" class="input-lg" name="usuarioPerfil" value="">

                            <h2>Contraseña:</h2>
                            <input type="text" class="input-lg" name="clavePerfil" value="">

                            <h2>Consultorio:</h2>
                            <select name="consultorioPerfil">

                            <option value="">odontologia</option>

                            </select>

                            <div class="form-group">

                                <h2>Horario</h2>
                                Desde: <input type="time" class="input-lg" name="hePerfil" value="">
                                Hasta: <input type="time" class="input-lg" name="hsPerfil" value="">

                            </div>

                        </div>

                        <div class="col-md-6 col-xs-12">

                            <br><br>

                            <input type="file" name="imgPerfil">

                            <br>

                            <img src="http://localhost/clinica/Vistas/img/defecto.png" class="img-responsive" width="200px">
                            
                            <input type="hidden" name="imgActual" value="">
                        
                            <br><br>
                            
                            <button type="submit" class="btn btn-success">Guardar Cambios</button>

                        </div>

                    </div>

                </form> -->

			</div>

		</div>

	</section>

</div>