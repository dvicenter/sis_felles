<?php 
		$decima=2;
		$html = '<table class="table table-striped table-bordered" style="width:80%;margin-left:10%;">';
	for ($i=0;$i<count($lineas);$i++) 
	 {
	 	 if ($i==9) {
	 		list($b1,$calibre,$paterno,$agricultor,$edad,$correo,$diagnostico,$b2,$b3,$b4,$b5,$b6,$cajas,$b8,$b9,$b10)=explode(",", $lineas[$i]);
		 	$html .= '	<tr>
		 					<td colspan="16" style="text-align:center;"><b>AGRICULTOR: </b>'.$agricultor.'</td>
		 					
		 				</tr>';
	 	}
	 	else{
	 		if ($i==10) {
	 			list($b1,$calibre,$paterno,$agricultor,$edad,$correo,$diagnostico,$b2,$b3,$b4,$acopiador,$b6,$cajas,$b8,$b9,$b10)=explode(",", $lineas[$i]);
			 	$html .= '	<tr>
			 					<td colspan="16" style="text-align:center;"><b>ACOPIADOR: </b>'.$acopiador.'</td>
			 					
			 				</tr>';
	 		}
	 		else{
	 			if ($i==19) {
	 				list($b1,$calibre,$paterno,$materno,$edad,$correo,$diagnostico,$b2,$b3,$b4,$b5,$b6,$cajas,$b8,$b9,$b10)=explode(",", $lineas[$i]);
					 $html .= '	<tr>
					 				<th colspan="8">'.$calibre.'</th>
					 				<th colspan="2" style="width: 50%;">'.$cajas.'</th>
					 			</tr>';
	 			}
	 			else{
			 		if ($i>21&&$i<=32) {
			 			if ($i>21&&$i<=25) {
			 				list($b1,$calibre,$paterno,$materno,$edad,$correo,$diagnostico,$b2,$b3,$b4,$b5,$b6,$cajas,$b8,$b9,$b10)=explode(",", $lineas[$i]);
					 		$calibre =str_replace('"','',$calibre);
					 		$html .= '	<tr>
					 						<td colspan="8">'.$calibre.','.$decima.'</td>
					 						<td colspan="8">'.$cajas.'</td>
					 					</tr>';
			 				$decima=$decima+1;	
			 			}
			 			else{

						 	list($b1,$calibre,$paterno,$materno,$edad,$correo,$diagnostico,$b2,$b3,$b4,$b5,$b6,$cajas,$b8,$b9,$b10)=explode(",", $lineas[$i]);
						 	$html .= '	<tr>
						 					<td colspan="8">'.$calibre.'</td>
						 					<td colspan="8">'.$cajas.'</td>
						 				</tr>';
			 			}
			 		}
	 				
	 			}
	 		}
	 		
	 	}
	 }
	 	$html .= '</table>';
	 	echo $html; 
 ?>