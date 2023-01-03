
<div class="register-box">
<div class="register-logo">
    <a href="ingreso-Paciente"><b>Nuevo paciente</b></a>
  </div>

  <div class="register-box-body">
    <!--<p class="login-box-msg">Registro</p>-->

    <form method="post" role="form">
      
      <div class="form-group has-feedback">
        <input type="text" class="form-control" name="apellido" placeholder="Apellido" required>
        <input type="hidden" name="rolP" value="Paciente">
        <span class=" form-control-feedback"></span>
      </div>

      <div class="form-group has-feedback">
        <input type="text" class="form-control" name="nombre" placeholder="Nombre" required>
        <span class=" form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="text" class="form-control" name="documento" placeholder="Cedula "  maxlength="10" required>
        <span class="glyphicon glyphicon-credit-card form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="text" class="form-control"  id="usuario" name="usuario" placeholder="Usuario" required>
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="text" class="form-control" name="clave" placeholder="Contraseña" required>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <!-- /.col -->
        <div class="col-xs-12">
          <button type="submit" class="btn btn-primary btn-block btn-flat">Registrar</button>
        </div>
        <!-- /.col -->
      </div>
      <?php

        $crear = new PacientesC();
        $crear -> CrearPacienteLogC();

      ?>
    </form>


    <br>

    <a href="ingreso-Paciente" class="text-center">Ya tengo un usuario</a>
  </div>
  <!-- /.form-box -->
</div>
<!-- /.register-box -->
