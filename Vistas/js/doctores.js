$(".DT").on("click", ".EliminarDoctor", function(){

	var Did = $(this).attr("Did");
	var imgD = $(this).attr("imgD");

	window.location = "index.php?url=doctores&Did="+Did+"&imgD="+imgD;

})

$(".DT").on("click", ".EditarDoctor", function(){

	var Did = $(this).attr("Did");
	var datos = new FormData();

	datos.append("Did", Did);

	$.ajax({

		url: "Ajax/doctoresA.php",
		method: "POST",
		data: datos,
		dataType: "json",
		contentType: false,
		cache: false,
		processData: false,

		success: function(resultado){

			$("#Did").val(resultado["id"]);
			$("#apellidoE").val(resultado["apellido"]);
			$("#nombreE").val(resultado["nombre"]);
			

			$("#correoE").val(resultado["correo"]);
			$("#telefonoE").val(resultado["telefono"]);
			$("#direccionE").val(resultado["direccion"]);
			$("#ciudadE").val(resultado["ciudad"]);
			$("#fnacimientoE").val(resultado["fnacimiento"]);
			$("#sexoE").val(resultado["sexo"]);
			$("#documentoE").val(resultado["documento"]);

			$("#fotoE").val(resultado["foto"]);
			$("#usuarioE").val(resultado["usuario"]);
			$("#claveE").val(resultado["clave"]);
			$("#consultorioE").val(resultado["consultorio"]);
			$("#horarioE").val(resultado["horarioE"]);
			$("#horarioS").val(resultado["horarioS"]);

			//$("#sexoE").html(resultado["sexo"]);
			

		} 

	})

})

$("#usuario").change(function(){

	$(".alert").remove();

	var usuario = $(this).val();
	var datos = new FormData();
	datos.append("Norepetir", usuario);

	$.ajax({

		url: "Ajax/doctoresA.php",
		method: "POST",
		data: datos,
		dataType: "json",
		cache: false,
		contentType: false,
		processData: false,

		success: function(resultado){

			if(resultado){

				$("#usuario").parent().after('<div class="alert alert-danger">El usuario o identificación ya existen. Elija otro.</div>');

				$("#usuario").val("");

			}

		}

	})

})

//No repetir paciente por usuario ni identificacion
$("#usuarioE").change(function(){

	$(".alert").remove();

	var usuario = $(this).val();
	var datos = new FormData();
	datos.append("Norepetir", usuario);

	$.ajax({

		url: "Ajax/doctoresA.php",
		method: "POST",
		data: datos,
		dataType: "json",
		cache: false,
		contentType: false,
		processData: false,

		success: function(resultado){

			if(resultado){

				$("#usuarioE").parent().after('<div class="alert alert-danger">El usuario o identificación ya existen. Elija otro.</div>');

				$("#usuarioE").val("");

			}

		}

	})

})




$(".DT").DataTable({

	"language": {

		"sSearch": "Buscar:",
		"sEmptyTable": "No hay datos en la Tabla",
		"sZeroRecords": "No se encontraron resultados",
		"sInfo": "Mostrando registros del _START_ al _END_ de un total _TOTAL_",
		"SInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0",
		"sInfoFiltered": "(filtrando de un total de _MAX_ registros)",
		"oPaginate": {

			"sFirst": "Primero",
			"sLast": "Último",
			"sNext": "Siguiente",
			"sPrevious": "Anterior"

		},

		"sLoadingRecords": "Cargando...",
		"sLengthMenu": "Mostrar _MENU_ registros"
	

	}

})