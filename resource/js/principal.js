$(document).ready(function(argument){
	$('#n_r_nota').click(function(){
		load_module(base_url+'nota/c_nota/index', '#n_r_nota');
	});

	$('#cargar_xls').live('change',function(){
		console.log(this.files.item(0));
		console.log($(this).val().replace('C:\\fakepath\\',''));
			/*$('#form_r_nota').ajaxSubmit({
				beforeSend:function(data){
					$('#list_nota_detail').html('<div class="loading"><img src="'+base_url+'resource/img/utilities/gif/loading.gif"/></div>');
				},
				success: function(data){
					$('#list_nota_detail').html(data);
				}
			});*/
		var ruta = $(this).val().replace('C:\\fakepath\\','');
		load_excel(ruta);
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

function load_excel(ruta){
	console.log(ruta);
	$.ajax({
		url:base_url+'nota/c_nota/cargar_xls/',
		type:'post',
		data:'ruta='+ruta,
		beforeSend:function(data){
			$('#list_nota_detail').html('<div class="loading"><img src="'+base_url+'resource/img/utilities/gif/loading.gif"/></div>');
		},
		success:function(data){
			//active(id_nav);
			$('#list_nota_detail').html(data);
			/*if($('#mod_role_assignment_component').is(':visible')){
			$("#mod_role_assignment_component input[name='rol_comp']").focus();
				buscar_rol_componente();	
			}*/
		}
	});
}