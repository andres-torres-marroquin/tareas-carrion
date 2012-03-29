$(function(){
	var $pareja = $("#par");
	var $cantidad = $("#cant");
	var $nombres = $("#nombres");
	var $noms = $("#noms");
	var numHijos = 0;
	var campos = "";

	$pareja.hide();
	$cantidad.hide();
	$nombres.hide();

	$("#casado").change(function(){
		if($(this).is(':checked')){
			$pareja.show();
		} else {
			$pareja.hide();
			$("#pareja").val("");
		}
	});

	$(".hijos").click(function(){
		if ($("#si").attr('checked')) {
			$cantidad.show();
		} else {
			$cantidad.hide();
			$nombres.hide();
			$("#cantidad").val("");
			$noms.remove();
			$nombres.append('<div id="noms"></div>');
		}
	});

	$("#cantidad").keyup(function(){
		$noms.empty();
		numHijos = $(this).val();
		if(numHijos > 0){
			$nombres.show();
			var html = '';
			for(var i = 1; i <= numHijos; i++) {
				html += '<br/>'+ i +'<input type="text" /> ';
			}
			$noms.append(html);
		}
		else {
			$nombres.hide();
			$noms.remove();
			$nombres.append('<div id="noms"></div>');
		}
	});
});
