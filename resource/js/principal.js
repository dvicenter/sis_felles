$(document).ready(function(argument){
	$('#n_user').click(function(){
		load_module(base_url+'c_usuario/index', '#n_user');
	});
	$('#n_proveedor').click(function(){
		load_module(base_url+'c_mantenimiento/proveedor', '#n_proveedor');
	});
	$('#n_acopiador').click(function(){
		load_module(base_url+'c_mantenimiento/acopiador', '#n_acopiador');
	});
	$('#n_producto').click(function(){
		load_module(base_url+'c_mantenimiento/producto', '#n_producto');
	});
	$('#n_r_nota').click(function(){
		load_module(base_url+'c_nota/nota', '#n_r_nota');
	});
	$('#n_a_nota').click(function(){
		load_module(base_url+'c_nota/a_nota', '#n_a_nota');
	});
	$('#n_a_precio').click(function(){
		load_module(base_url+'c_facturacion/a_precio', '#n_a_precio');
	});
	$('#n_boleta').click(function(){
		load_module(base_url+'c_facturacion/boleta', '#n_boleta');
	});
	$('#n_factura').click(function(){
		load_module(base_url+'c_facturacion/factura', '#n_factura');
	});

	$('.browser li').click(function() {
		$('.browser li').removeClass('active');
		$(this).addClass('active');
	})
});


function load_module(url,id_nav) {
	$.ajax({
		url:url,
		beforeSend:function(data){
			$('#module_content').html('<div class="loading"><img src="'+base_url+'resource/img/utilities/gif/loading.gif"/></div>');
		},
		success:function(data){
			//active(id_nav);
			$('#module_content').html(data);
			/*if($('#mod_role_assignment_component').is(':visible')){
			$("#mod_role_assignment_component input[name='rol_comp']").focus();
				buscar_rol_componente();	
			}*/
		}
	});
}