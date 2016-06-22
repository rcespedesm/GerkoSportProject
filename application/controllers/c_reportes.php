<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class C_reportes extends CI_Controller {

	public function index()
	{
		//$data['materiaprima'] = $this->m_pedido->get_alertas();
		$data['materiaprima'] = $this->m_reportes->fechas();
		$detalles = array();

		
		foreach($data['materiaprima']->result_array() as $fecha)
		{
			$query = $this->m_reportes->get_detalles($fecha["imap_fecha_ingreso"]);
			$detalles[$fecha["imap_fecha_ingreso"]]=$query;
		}
		$data['detalles'] = $detalles;
		$data['alertasReportes'] = $this->m_reportes->get_reporte_faltante();
		$this->load->view('v_acabeza');
		$this->load->view('v_admin_99reportes',$data);
		$this->load->view('v_zpie');
	}

	public function detalles()
	{
		$pedidos = $this->m_pedido->get_all_pedidos();
		foreach($pedidos->result_array() as $f)
		{
			$lista[$f['ped_codigo']] = $this->m_pedido->get_pedido_productos($f['ped_codigo']);
		}

		if($pedidos->num_rows() != 0)
		{
			return $lista;
		}
		else
		{
			$lista=array();
			return $lista;
		}
	}

	public function mprima()
	{
		$startD=$_POST['startD'];
		$endD=$_POST['endD'];

		$data['fechas'] = $this->m_reportes->fechas_interval($startD,$endD);

		$detalles = array();

		foreach($data['fechas']->result_array() as $fecha)
		{
			$query = $this->m_reportes->get_detalles($fecha["imap_fecha_ingreso"]);
			$detalles[$fecha["imap_fecha_ingreso"]]=$query;
		}
		$data['detalles'] = $detalles;
		$data['alertasReportes'] = $this->m_reportes->get_reporte_faltante();
		$this->load->view('v_acabeza');
		$this->load->view('reportes/v_reporte_mprima',$data);
		$this->load->view('v_zpie');	
	}

	public function mprima_salida()
	{
		$startD=$_POST['startD'];
		$endD=$_POST['endD'];

		$data['fechas'] = $this->m_reportes->fechas_interval($startD,$endD);

		$detalles = array();

		foreach($data['fechas']->result_array() as $fecha)
		{
			$query = $this->m_reportes->get_detalles($fecha["imap_fecha_ingreso"]);
			$detalles[$fecha["imap_fecha_ingreso"]]=$query;
		}
		$data['detalles'] = $detalles;
		$data['alertasReportes'] = $this->m_reportes->get_reporte_faltante();
		$this->load->view('v_acabeza');
		$this->load->view('reportes/v_reporte_mprima_salida',$data);
		$this->load->view('v_zpie');	
	}

	public function alertas()
	{
		
	}

	public function pedidos()
	{
		$startD = $_POST['startD'];
		$endD = $_POST['endD'];



		$alerta= $this->m_pedido->contar();
				$sesion = array
				(
					'alerta' => $alerta
				);
		$this->session->set_userdata($sesion);
		$this->cart->destroy();
		$data['pedidos']=$this->m_reportes->get_all_pedidos_rango($startD, $endD);
		$data['lista']=$this->detalles();
		
		$this->load->view('v_acabeza');
		$this->load->view('reportes/v_reporte_pedido',$data);
		$this->load->view('v_zpie');
	}

	public function entrada_form()
	{
		$this->load->view('v_acabeza');
		$this->load->view('reportes/v_reporte_mprima');
		$this->load->view('v_zpie');
	}

	public function salida_form()
	{
		$this->load->view('v_acabeza');
		$this->load->view('reportes/v_reporte_mprima_salida');
		$this->load->view('v_zpie');
	}

	public function alertas_form()
	{
		$this->load->view('v_acabeza');
		$this->load->view('reportes/v_reporte_mprima');
		$this->load->view('v_zpie');
	}

	public function pedidos_form()
	{
		$this->load->view('v_acabeza');
		$this->load->view('reportes/v_reporte_pedido');
		$this->load->view('v_zpie');
	}

}
