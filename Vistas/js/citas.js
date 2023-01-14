//$(".DT").on("click", ".EliminarPaciente", function(){
//
//	var Cid = $(this).attr("Cid");
//	
//	window.location = "index.php?url=pacientes&Pid="+Pid+"&imgP="+imgP;
//
//})


$(".FM").on("click", ".EditarEstadoCita", function(){

	var Cid = $(this).attr("Cid");
	var datos = new FormData();

	datos.append("Cid", Cid);

	$.ajax({

		url: "Ajax/citasA.php",
		method: "POST",
		data: datos,
		dataType: "json",
		cache: false,
		contentType: false,
		processData: false,

		success: function(resultado){

			$("#Cid").val(resultado["id"]);
			$("#estadoC").val(resultado["estado"]);
			

		}

	})

})










