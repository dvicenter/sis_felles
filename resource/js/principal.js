$(document).ready(function(argument){
	$('#n_r_nota').click(function(){
		load_module(base_url+'nota/c_nota/index', '#n_r_nota');
	});
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