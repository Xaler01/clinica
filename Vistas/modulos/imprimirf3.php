
<body onload="window.print();">
    <div class="content-wrapper " >
        <section class="content col-xs-12">
            <div class="box">
                <div class="box-body">
                    <b>Reporte MES-ATENCIONES</b><br><br>
                    <table class="table table-bordered table-hover table-striped dt-responsive ">
                    
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
                        
                    </div>
                </div>
            <div class="row no-print">
                <div class="col-xs-12">
                <a href="estadisticas" target="_self" class="btn btn-default"><i class="fa fa-arrow-left"></i> REGRESAR</a>
                </div>
            </div>
        </section>
    </div>
    
</body>