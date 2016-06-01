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
		$this->load->view('v_admin_99reportes',$data);
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
		$this->load->view('v_admin_99reportes',$data);
		$this->load->view('v_zpie');	
	}

}
