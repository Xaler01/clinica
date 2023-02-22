<?php
if($_SESSION["rol"] != "Doctor"  ){

	echo '<script>

	window.location = "inicio";
	</script>';

	return;

}
?>



<!--<body onload="window.print();">-->

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



    <!-- Table Diagnostico -->
    <div  rol="dialog" id="EditarEstadoCita">

    <form method="post" role="form">

    <div id="bodyEstado">

      <div class="box-body">
        <!-- Split button -->

        <div class="form-group">

          

  



    <div class="row">
       <div class="col-xs-6">
        <p class="lead">Antecedentes Patológicos</p>

        <div class="table-responsive">
          <table class="table">
          <tr>
              <th>Alergias:</th>
              <td><input type="text" class="form-control input-lg" name="alergias"></td>
            </tr>
            <tr>
              <th style="width:50%">Patologías: </th>                    
              <td><input type="text" class="form-control input-lg" name="enfermedadesprevias"></td>
            </tr>
           
          </table>
        </div>
      </div>
      <!-- /.col -->
      <!-- accepted payments column -->
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
    <div class="row">
      <div class="col-xs-12 table-responsive">
        <table class="table table-striped">
          <thead>
          <tr>
          <th colspan="4">
            <p class="lead">Receta</p>
            <button class="btn btn-success btn-xs pull-right" title="Agregar ítem">
              <i class="fa fa-plus"></i>
            </button>
          </th>
        </tr>
          <tr>
            <th>Item</th>
            <th>Producto</th>
            <th>Cantidad</th>
            <th>Indicaciones</th>
            
          </tr>
          </thead>
          <tbody>
          <tr>
            <td>1</td>
            <td>Ibuprofeno 400mg</td>
            <td>10</td>
            <td>Tomar cada 8 horas con los alimentos</td>
          </tr>
        </tbody>
        </table>
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
   
    <!-- Table Estado de la atención 


    ************************* desde esta parte

    <div  rol="dialog" id="EditarEstadoCita">

        <form method="post" role="form">
          

          <div id="bodyEstado">

            <div class="box-body">
              <!-- Split button 

              <div class="form-group">
      
      ************************* hasta esta parte-->
          
                
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
                <?php  
                    
                ?>
                
              </div>


            </div>

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
  <!-- /.content -->
</div>
<!-- ./wrapper -->


