<?php
class M_reportes extends CI_Model {

    public function fechas()
    {
        $query = $this->db->query("select distinct(ingreso_materia_prima.imap_fecha_ingreso)
from ingreso_materia_prima join materia_prima on ingreso_materia_prima.map_codigo = materia_prima.map_codigo");
		return $query;
    }

	public function fechas_interval($start, $end)
    {
        $query = $this->db->query("select distinct(im.imap_fecha_ingreso) from ingreso_materia_prima as im join materia_prima as mp on im.map_codigo = mp.map_codigo where im.imap_fecha_ingreso >= '".$start."' and im.imap_fecha_ingreso <= '".$end."'");
		return $query;
    }

    public function fechas_interval_salida($start, $end)
    {
        $query = $this->db->query("SELECT detalle_salida_mp.map_codigo, mp.map_nombre, mp.map_un_medida, sum(detalle_salida_mp.dsmp_cantidad) as total
FROM salida_materia_prima AS a
JOIN detalle_salida_mp ON detalle_salida_mp.`smp-codigo` = a.smp_codigo
JOIN materia_prima AS mp ON detalle_salida_mp.map_codigo = mp.map_codigo
WHERE a.smp_fecha_salida >= '".$start."' and a.smp_fecha_salida <= '".$end."'
GROUP BY detalle_salida_mp.map_codigo, mp.map_nombre, mp.map_un_medida ORDER BY SUM( detalle_salida_mp.dsmp_cantidad ) DESC ");
		return $query;
    }

	public function devolver_codigo_salida($codpedido)
    {
        $query = $this->db->query("select * from salida_materia_prima where ped_codigo = '".$codpedido."'");
		return $query;
    }
	

public function get_alertas()
    {
		   $this->db->select('*');
		   $this->db->from('pedido');
		   $this->db->join('cliente','cliente.cli_codigo = pedido.cli_codigo');
		   $this->db->where('ped_estado', 'FALTA MATERIAL');
		   $query=$this->db->get();
		return $query;
    }

public function get_detalles($fecha)
    {
		$this->db->select('*');
		$this->db->from('ingreso_materia_prima');
		$this->db->join('materia_prima','materia_prima.map_codigo = ingreso_materia_prima.map_codigo');
		$this->db->where('imap_fecha_ingreso',$fecha);
		$query=$this->db->get();
return $query;
    }
    
	public function get_reporte_faltante()
    {
        $query = $this->db->query("SELECT a.map_codigo, m.map_nombre, sum(a.ale_falta) as total
									FROM alerta as a join materia_prima as m on a.map_codigo = m.map_codigo
									group by a.map_codigo, m.map_nombre");
		return $query;
    }

    public function fechas_interval2($startD,$endD)
    {
		 $query = $this->db->query("SELECT *
									FROM ingreso_materia_prima as im join materia_prima as m on im.map_codigo = m.map_codigo
									where im.imap_fecha_ingreso >= '".$startD."' and im.imap_fecha_ingreso <= '".$endD."'
									order by m.map_nombre");
		return $query;
    }


    public function get_all_pedidos_rango($start, $end, $estado)
    {
		if($estado == "Completado"){
			$estado = "COMPLETADO";
		}
		if($estado == "Re-Enviar"){
			$estado = "FALTA MATERIAL";
		}	
		if($estado == "Produccion"){
			$estado = "PENDIENTE";
		}		
    
		$query = $this->db->query("select * from pedido join cliente on cliente.cli_codigo = pedido.cli_codigo where ped_fecha >= '".$start."' and ped_fecha <= '".$end."' and ped_estado = '".$estado."'");
		return $query;
    }
    
}
