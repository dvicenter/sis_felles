<?php 
		$html = '<table>'
	for ($i=0;$i<count($lineas);$i++) 
	 {
	 	list($nombre,$paterno,$materno,$edad,$correo,$diagnostico)=explode("\t", $linea[$i]);
	 	$html .= '	<tr>
	 					<td>'.$nombre.'</td>
	 					<td>'.$paterno.'</td>
	 					<td>'.$materno.'</td>
	 					<td>'.$edad.'</td>
	 					<td>'.$correo.'</td>
	 					<td>'.$diagnostico.'</td>
	 				</tr>';
	 }
	 	$html .= '</table>';
	 	echo $html; 
 ?>