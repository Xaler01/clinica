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
		
		<div class="box" >
			
             <!--inicio REPORTE 1 -->
			<div class="box-body " >
                <b>Reporte ESPECIALIDAD-ATENCIONES</b><br><br>
				<table class="table table-bordered table-hover table-striped dt-responsive DT  ">
                
					<!--//Menu con los datos que se van a mostrar-->
					<thead >
						
						<tr>
							
							<th>ESPECIALIDAD</th>
                            <th>ATENDIDOS</th>
				

						</tr>

					</thead>

					<tbody >

						<?php
							
                         $resultado = CitasC::ContarEspecialidadesC();

                            foreach ($resultado as $key => $value) {
                                echo'
                                <tr>
                                <td>'.$value['ESPECIALIDAD'].'</td>
                                <td>'.$value['ATENDIDOS'].'</td>';
                            }
						?>
                         
					</tbody>

                   

				</table>
                <!--IMPRIMIR PRIMER REPORTE-->
                <div class="row no-print">
                    <div class="col-xs-12">
                        <a href="imprimirf1" target="_self" class="btn btn-default"><i class="fa fa-print"></i> Print</a>
                        <!--I<button type="button" class="btn btn-primary pull-right" style="margin-right: 5px;">
                            <i class="fa fa-download"></i> Generate PDF
                        </button>-->
                    </div>
            </div>
            <!--fin REPORTE 1 -->

            <!--inicio REPORTE 2 -->
 <!--           
             <br><br>A
            <div class="box-body">
                <b>Reporte MEDICO-ATENCIONES</b><br><br>
				<table class="table table-bordered table-hover table-striped dt-responsive DT">
  -->               
					<!--//Menu con los datos que se van a mostrar-->
<!--
                    <thead>
						
						<tr>
							
							<th>PROFESIONAL</th>
                            <th>ATENDIDOS</th>
				

						</tr>

					</thead>

					<tbody>
 -->
  <!--   
//						<?php
//							
//                         $resultado = CitasC::MedicoAtencionesC();
//
//                            foreach ($resultado as $key => $value) {
//                                echo'
//                                <tr>
//                                <td>'.$value['nombre'].' '.$value['apellido'].'</td>
//                                <td>'.$value['atenciones'].'</td>';
//                            }
//						?>
                       
					</tbody>

                   

				</table>
 -->                
                <!--IMPRIMIR SEGUNDO REPORTE-->
<!--
                <div class="row no-print">
                    <div class="col-xs-12">
                        <a href="imprimirf2" target="_blank" class="btn btn-default"><i class="fa fa-print"></i> Print</a>

                    </div>
             </div>
 -->
            <!--fin REPORTE 2 -->

            <!--inicio REPORTE 3 -->
            <br><br>B
            <div class="box-body">
                <b>Reporte DOCTOR-ESPECIALIDAD-ATENCIONES</b><br><br>
				<table class="table table-bordered table-hover table-striped dt-responsive DT">
                
					<!--//Menu con los datos que se van a mostrar-->
					<thead>
						
						<tr>
							
							<th>ESPECIALISTA</th>
                            <th>ESPECIALIDAD</th>
                            <th>ATENDIDOS</th>
				

						</tr>

					</thead>

					<tbody>

						<?php
							
                         $resultado = CitasC::MedicoEspAtencionesC();

                            foreach ($resultado as $key => $value) {
                                echo'
                                <tr>
                                <td>'.$value['nombre'].' '.$value['apellido'].'</td>
                                <td>'.$value['especialidad'].'</td>
                                <td>'.$value['atenciones'].'</td>';
                            }
						?>
                         
					</tbody>

                   

				</table>
                <!--IMPRIMIR tercer REPORTE-->
                <div class="row no-print">
                    <div class="col-xs-12">
                        <a href="imprimirf2" target="_self" class="btn btn-default"><i class="fa fa-print"></i> Print</a>
                    </div>
             </div>


            <!--FIN REPORTE 3 -->

            <!--inicio REPORTE 4 -->
            <br><br>c
            <div class="box-body">
                <b>Reporte MES-ATENCIONES</b><br><br>
				<table class="table table-bordered table-hover table-striped dt-responsive DT">
                
					<!--//Menu con los datos que se van a mostrar-->
					<thead>
						
						<tr>
							
                            <th>MES</th>
							<th>NOMBRE</th>
                            <th>ATENDIDOS</th>
				

						</tr>

					</thead>

					<tbody>

						<?php
							
                         $resultado = CitasC::MesAtendidos();

                            foreach ($resultado as $key => $value) {
                                echo'
                                <tr>';

                                                             
                                
                                echo '<td>'.$value['id_mes'].'</td>
                                <td>'.$value['mes'].'</td>
                              <td>'.$value['atendidos'].'</td>';
                            }
						?>
                         
					</tbody>

                   

				</table>
                <!--IMPRIMIR tercer REPORTE-->
                <div class="row no-print">
                    <div class="col-xs-12">
                        <a href="imprimirf3" target="_self" class="btn btn-default"><i class="fa fa-print"></i> Print</a>
                    </div>
             </div>


            <!--FIN REPORTE 4 -->

    	</div>

	</section>

</div>

