<h1 class="page-header">
    REPORTES <small></small>
</h1>


<?php echo link_tag('complemento/morrisjs/morris.css'); ?>   


<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Reportes
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#home" data-toggle="tab">Entrada de Materia Prima</a>
                    </li>
                    <li><a href="#profile" data-toggle="tab">Salida de Materia Prima</a>
                    </li>
                    <li><a href="#settings" data-toggle="tab">Pedido</a>
                    </li>
                    <li><a href="#alertas" data-toggle="tab">Alertas</a>
                    </li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div class="tab-pane fade in active" id="home">
                    	<?=form_open(base_url()."index.php/c_reportes/mprima")?>
					</br>					
					<div class="row">
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
					</div>
					</br>
                        <?=form_close()?>
                        <?php $this->load->view('reportes/v_reporte_mprima'); ?>
                    </div>
                    <div class="tab-pane fade" id="profile">
                        <?=form_open(base_url()."index.php/c_reportes/mprima_salida")?>
					</br>					
					<div class="row">
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
					</div>
					</br>
                        <?=form_close()?>
                        <?php $this->load->view('reportes/v_reporte_mprima_salida'); ?>
                    </div>
                    <div class="tab-pane fade" id="messages">
                        <h4>Producto</h4>
                        <?php $this->load->view('reportes/v_reporte_producto'); ?>
                    </div>
                    <div class="tab-pane fade" id="settings">
                        <h4>Pedido</h4>
                        <?php $this->load->view('reportes/v_reporte_pedido'); ?>
                    </div>
                    <div class="tab-pane fade" id="alertas">
                        <h4>Pedido</h4>
                        <?php $this->load->view('reportes/v_reporte_alertas'); ?>
                    </div>
                </div>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
</div>  
<script src="<?= base_url(); ?>complemento/morrisjs/morris.min.js"></script>
