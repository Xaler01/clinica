<div class="login-box">
  <div class="login-logo">
  <a href="seleccionar"><b>Ingreso Sistema de Citas</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Ingreso con rol Paciente</p>

    <form method="post">

      <div class="form-group has-feedback">

        <input type="text" class="form-control" name="usuario-Ing" placeholder="Usuario">
        <span class="glyphicon glyphicon-user form-control-feedback"></span>

      </div>

      <div class="form-group has-feedback">

        <input type="password" class="form-control" name="clave-Ing" placeholder="Contraseña">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>

      </div>

      <div class="row">
       
        <!-- /.col -->
        <div class="col-xs-12">
          <button type="submit" class="btn btn-primary btn-block btn-flat">Ingresar</button>
        </div>
        <!-- /.col -->
      </div>


      <!--Registro nuevo paciente-->
      
        <br>

        <a href="registroP" class="text-center">Registro nuevo usuario</a>
    
      <!--fin Registro nuevo paciente-->
      <?php

      $ingreso = new PacientesC();
      $ingreso -> IngresarPacienteC();

      ?>
    </form>

  </div>
  <!-- /.login-box-body -->
</div>


