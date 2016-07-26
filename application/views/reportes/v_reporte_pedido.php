<h1 class="page-header">
    REPORTES <small></small>
</h1>


<?php echo link_tag('complemento/morrisjs/morris.css'); ?>   


<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Reportes de Pedidos
            </div>
            <!-- /.panel-heading -->

		<div class="panel-body text-center">

		<nav class="navbar navbar-default" role="navigation">
		  <div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				    data-target=".navbar-ex1-collapse">
			  <span class="sr-only">Desplegar navegación</span>
			  <span class="icon-bar"></span>
			  <span class="icon-bar"></span>
			  <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Reportes</a>
		  </div>
		 
		  <!-- Agrupar los enlaces de navegación, los formularios y cualquier
			   otro elemento que se pueda ocultar al minimizar la barra -->
		  <div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav">
			  <li class="active"><a href="<?= base_url(); ?>index.php/c_reportes/pedidos_form">Pedidos</a></li>
			  <li><a href="<?= base_url(); ?>index.php/c_reportes/alertas_form">Alertas</a></li>
			  <li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
				  Materia Prima <b class="caret"></b>
				</a>
				<ul class="dropdown-menu">
				  <li><a href="<?= base_url(); ?>index.php/c_reportes/entrada_form">Entrada</a></li>
				  <li><a href="<?= base_url(); ?>index.php/c_reportes/salida_form">Salida</a></li>
				</ul>
			  </li>
			</ul>
		  </div>
		</nav>


		<div class="row">
		<?=form_open(base_url()."index.php/c_reportes/pedidos")?>
           	<div class="from-group col-lg-2 control">
           		<h5>Mostrar Reporte desde </h5>
           	</div>
           	<div class="from-group col-lg-2 control">
           		<input type="date" class="form-control" id="" name="startD">
           	</div>
           	<div class="from-group col-lg-1 control">
           		<h5>hasta </h5>
           	</div>
           	<div class="from-group col-lg-2 control">
           		<input type="date" class="form-control" id="" name="endD">
           	</div>
           	<div class="from-group col-lg-1 control">
           		<h5>Estado </h5>
           	</div>
           	<div class="from-group col-lg-2 control">
				<select class="form-control" name="estado">
				  <option>Completado</option>
				  <option>Re-Enviar</option>
				  <option>Produccion</option>
				</select>
           	</div>
           	<div class="from-group col-xs-2 control">
           		<input type="submit" class="btn btn-primary" value="Mostrar"></input>
           	</div>
        <?=form_close()?>
		</div>
		</br>

<div class="row">
    <div class="col-lg-12">
    <?php
    if(isset($pedidos))
	{
    ?>
	<div class="panel panel-primary">
		<div class="panel-heading">
        	<div class="row text-center">
        		<h2><strong><i class="fa fa-fw fa-database fa-1x"></i> PEDIDOS</strong></h2>
        	</div>
        </div>
        <!-- /.panel-heading -->
        <div class="panel-body">
        	<div class="dataTable_wrapper">
        		<table class="table table-bordered table-responsive  order-table" id="dataTables-example">
        			<thead>
                        <tr class="active">
                            <th class="text-center">CLIENTE</th>
                            <th class="text-center">FECHA</th>
					   		<th class="text-center">FECHA DE ENTREGA</th>
                            <th class="text-center">CANTIDAD TOTAL</th>
                            <th class="text-center">PRECIO TOTAL</th>
                            <th class="text-center">ESTADO</th>
                            <th class="text-center">DETALLE</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php
					foreach($pedidos->result_array() as $f)
					{
						echo '<tr>';
						echo '<td>'.$f['cli_nombre'].'</td>';
						echo '<td>'.$f['ped_fecha'].'</td>';
						echo '<td>'.$f['ped_fecha_entrega'].'</td>';
						echo '<td>'.$f['ped_cant_total'].'</td>';
						echo '<td>'.$f['ped_prec_total'].'</td>';
						echo '<td>'.$f['ped_estado'].'</td>'; ?>
						<td class='text-center'>
							<a href='#' data-toggle='modal' data-target="#<?=$f['ped_codigo']?>"><i class='fa fa-paste fa-1x'></i></a>
						</td>
						
					<?php
					}?>
                    </tbody>
        		</table>
        	</div>
       </div> 
	</div>
	<?php
	}
	?>
    </div>
</div>		

        </div>
        <!-- /.panel -->
    </div>
</div>  
<script src="<?= base_url(); ?>complemento/morrisjs/morris.min.js"></script>


