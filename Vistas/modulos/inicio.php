<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">

        <?php

        $inicio = new InicioC();
        $inicio -> MostrarInicioC();


        if($_SESSION["rol"] == "Administrador"){

          echo '
              <div class="box-footer">

               <a href="inicio-editar">
                 <button class="btn btn-success btn-lg">Editar</button>
               </a>

              </div>';

        }


        ?>
       
        
       <div class="box-footer"><hr>
          Derechos reservados @Xaler01 2022-2023
        </div>
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>