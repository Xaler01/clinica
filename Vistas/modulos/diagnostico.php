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
              echo '<b>Nombre: </b><td>'.$paciente["nombre"].' '.$paciente["apellido"].'</td><br>
                    <b>Edad: </b><td>24 años </td> <br>
                    <b>Genero: </b><td>'.$paciente["sexo"].'</td><br>
                    <b>C.I: </b><td>'.$paciente["documento"].'</td><br>
                  <b>Correo: </b><td>'.$paciente["correo"].'</td><br>
                  <b>Telefono: </b><td>'.$paciente["telefono"].'</td>';
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
                echo '<b>Nombre: </b><td>'.$doctor["nombre"].' '.$doctor["apellido"].'</td><br>
                          <b>Edad: </b><td>24 años </td> <br>
                          <b>Genero: </b><td>'.$doctor["sexo"].'</td><br>
                          <b>C.I: </b><td>'.$doctor["documento"].'</td><br>
                        <b>Correo: </b><td>'.$doctor["correo"].'</td><br>
                        <b>Telefono: </b><td>'.$doctor["telefono"].'</td>';
              }
            }
          ?>
        
      </div>
      <!-- info FIN Datos del Doctor-->
      
      </div>
    <!-- /.Fin inf datos cabecera -->

    <!-- Table Diagnostico -->
    <div class="row">
       <div class="col-xs-6">
        <p class="lead">Antecedentes Patológicos</p>

        <div class="table-responsive">
          <table class="table">
            <tr>
              <th style="width:50%">Patologias: </th>
              <td>NA</td>
            </tr>
            <tr>
              <th>Alergias:</th>
              <td>NA</td>
            </tr>
            <tr>
              <th>Proxima Cita sugerida: </th>
              <td>30 dias</td>
            </tr>
          </table>
        </div>
      </div>
      <!-- /.col -->
      <!-- accepted payments column -->
      <div class="col-xs-6">
        <p class="lead">Diagnóstico</p>
        

        <p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
          El paciente presenta molestias en el estomago, lo cual se atribuye a una posible INFECCION ESTOMACAL
        </p>
      </div>
      <!-- /.col -->
    </div>
    <!-- FIN Table Diagnostico -->

    <!-- Table RECETA -->
    <div class="row">
      <div class="col-xs-12 table-responsive">
        <table class="table table-striped">
          <thead>
             <p class="lead">Receta</p>
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
   
    <!-- Table Estado de la atención -->

    <div  rol="dialog" id="EditarEstadoCita">

        <form method="post" role="form">
          
          <div id="bodyEstado">

            <div class="box-body">
              <!-- Split button -->

              <div class="form-group">
                
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


