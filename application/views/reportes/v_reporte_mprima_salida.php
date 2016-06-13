<h1 class="page-header">
    REPORTES <small></small>
</h1>


<?php echo link_tag('complemento/morrisjs/morris.css'); ?>   


<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Reportes de salida de materia prima
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
		<?=form_open(base_url()."index.php/c_reportes/mprima_salida")?>
           	<div class="from-group col-lg-3 control">
           		<h5>Mostrar Reporte desde </h5>
           	</div>
           	<div class="from-group col-lg-3 control">
           		<input type="date" class="form-control" id="" name="startD">
           	</div>
           	<div class="from-group col-lg-1 control">
           		<h5>hasta </h5>
           	</div>
           	<div class="from-group col-lg-3 control">
           		<input type="date" class="form-control" id="" name="endD">
           	</div>
           	<div class="from-group col-xs-2 control">
           		<input type="submit" class="btn btn-primary" value="Mostrar"></input>
           	</div>
        <?=form_close()?>
		</div>
		</br>

<table class="table table-bordered table-responsive" id="dataTables-example">
    <thead>
        <tr class="active">
	  		<th class="text-center">FECHA ENTRADA DE MATERIA PRIMA</th>
            <th class="text-center">DETALLE DE MATERIA PRIMA</th>
        </tr>
    </thead>
    <tbody> 

<?php
if(isset($materiaprima)){
if($materiaprima->num_rows() != 0)
{
	foreach($materiaprima->result_array() as $f)
	{?>
	<tr>
		<td class='text-center'><?= $f['imap_fecha_ingreso']?></td>
		<td class='text-center'>
		<table class="table table-bordered table-responsive" id="dataTables-example">
          	<thead>
              <tr class="active">
                  <th class="text-center">MATERIA PRIMA</th>
                  <th class="text-center">CANTIDAD</th>
                  <th class="text-center">CANTIDAD BOLSA</th>
                  <th class="text-center">TOTAL</th>
                  <th class="text-center">PRECIO</th>
                  <th class="text-center">UNIDAD DE MEDIDA</th>
              </tr>
           </thead>
		<tbody> 
		<?php
			foreach($detalles[$f['imap_fecha_ingreso']]->result_array() as $d)
			{
				echo "<tr>";
				echo "<td class='text-center'> ".$d["map_nombre"]."</td>";
				echo "<td class='text-center'>".$d["imap_cantidad"]."</td>";
				echo "<td class='text-center'>".$d["imap_cant_bolsa"]."</td>";
				echo "<td class='text-center'>".($d["imap_cant_bolsa"]*$d["imap_cantidad"])."</td>";
				echo "<td class='text-center'>".$d["map_precio"]."</td>";
				echo "<td class='text-center'>".$d["map_un_medida"]."</td>";
				echo "</tr>";
			}
		//print_r($detalles[$f["ped_codigo"]]);
		?>
		</tbody>
			</table>
		</td>
<?php
	}
}
}
?>
<?php
if(isset($fechas)){
if($fechas->num_rows() != 0)
{
	foreach($fechas->result_array() as $f)
	{?>
	<tr>
		<td class='text-center'><?= $f['imap_fecha_ingreso']?></td>
		<td class='text-center'>
		<table class="table table-bordered table-responsive" id="dataTables-example">
          	<thead>
              <tr class="active">
                  <th class="text-center">MATERIA PRIMA</th>
                  <th class="text-center">CANTIDAD</th>
                  <th class="text-center">CANTIDAD BOLSA</th>
                  <th class="text-center">TOTAL</th>
                  <th class="text-center">PRECIO</th>
                  <th class="text-center">UNIDAD DE MEDIDA</th>
              </tr>
           </thead>
		<tbody> 
		<?php
			foreach($detalles[$f['imap_fecha_ingreso']]->result_array() as $d)
			{
				echo "<tr>";
				echo "<td class='text-center'> ".$d["map_nombre"]."</td>";
				echo "<td class='text-center'>".$d["imap_cantidad"]."</td>";
				echo "<td class='text-center'>".$d["imap_cant_bolsa"]."</td>";
				echo "<td class='text-center'>".($d["imap_cant_bolsa"]*$d["imap_cantidad"])."</td>";
				echo "<td class='text-center'>".$d["map_precio"]."</td>";
				echo "<td class='text-center'>".$d["map_un_medida"]."</td>";
				echo "</tr>";
			}
		//print_r($detalles[$f["ped_codigo"]]);
		?>
		</tbody>
			</table>
		</td>
<?php
	}
}
}
?>    
    </tbody>
</table>

		

        </div>
        <!-- /.panel -->
    </div>
</div>  
<script src="<?= base_url(); ?>complemento/morrisjs/morris.min.js"></script>


