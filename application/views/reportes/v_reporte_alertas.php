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

		</br>

<div class="row">
    <div class="col-lg-12">
    <?php
    if(isset($alertasReportes))
	{
    ?>
	<div class="panel panel-primary">
		<div class="panel-heading">
        	<div class="row text-center">
        		<h2><strong><i class="fa fa-fw fa-database fa-1x"></i> ALERTAS</strong></h2>
        	</div>
        </div>
        <!-- /.panel-heading -->
        <div class="panel-body">
        	<div class="dataTable_wrapper">
        		<table class="table table-bordered table-responsive" id="dataTables-example">
				  	<thead>
					  <tr class="active">
						  <th class="text-center">CODIGO</th>
						  <th class="text-center">MATERIA PRIMA</th>
						  <th class="text-center">TOTAL FALTANTE</th>
					  </tr>
				   </thead>
					<tbody> 
					<?php
						foreach($alertasReportes->result_array() as $f)
						{
							echo "<tr>";
							echo "<td class='text-center'>".$f["map_codigo"]."</td>";
							echo "<td class='text-center'>".$f["map_nombre"]."</td>";
							echo "<td class='text-center'>".$f["total"]."</td>";
							echo "</tr>";
						}
					?>
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
