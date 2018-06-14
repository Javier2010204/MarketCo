$(document).on "ajax:beforeSend", "#emails-form", ()->
	$("#email-info").html "Se esta procesando tu peticion..."
$(document).on "ajax:success", "#emails-form", (e, data, estado,xhr)->
	$(this).slideUp()
	$("#email-info").removeClass('blue')
	$("#email-info").addClass('light-green')
	$("#email-info").html "Ya esta!, te enviaremos la informacion a tu email"
$(document).on "ajax:error", "#emails-form", (e,data,estado,xhr)->
	console.log(e.detail[0].email[0])
	$("#email-info").removeClass('blue')
	$("#email-info").addClass('red')
	$("#email-info").html e.detail[0].email[0]