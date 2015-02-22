$(document).ready(function() {

	 var MESSAGES = {
            "ajax_timeout" : "El tiempo de conexión. Por favor, inténtelo de nuevo.",
            "authenticating" : "Autenticando ...",
            "changed_ip" : "Tu dirección IP ha cambiado. Por favor, acceda de nuevo.",
            "expired_session" : "Su sesión ha caducado. Por favor, acceda de nuevo.",
            "invalid_login" : "El inicio de sesión no es válida.",
            "invalid_session" : "Su cookie de sesión no es válida. Por favor, acceda de nuevo.",
            "empty_input" : "Ingrese los campos solicitados.",
            "network_error" : "Un error de red al envío de su solicitud de inicio de sesión. Por favor, inténtelo de nuevo. Si el problema persiste, póngase en contacto con su proveedor de servicios de red.",
            "no_username" : "Debe especificar un nombre de usuario para iniciar sesión.",
            "prevented_xfer" : "La sesión no podía ser transferido porque no se accede a este servicio a través de una conexión segura. Por favor, iniciar sesión ahora para continuar.",
            "session_locale" : "The desired locale has been saved to your browser. To change the locale in this browser again, select another locale on this screen.",
            "success" : "Inicio de sesión correcto. Redireccionando ...",
            "token_incorrect" : "El token de seguridad en su solicitud no es válida.",
            "token_missing" : "El token de seguridad se encuentra en su solicitud.",
            "": 0
    };


    // LOGIN FORM

	$("#btn-login").click(function() {

		var user = $("#login-username").val();
		var pass = $("#login-password").val();

		if(user == '' || pass == ''){
			$("#login-status").attr('class', 'warn-notice');
			$("#login-status-message").text(MESSAGES['empty_input']);
			$("#login-status").css("visibility","visible","opacity","1");			
		} 
		else
		{
		$.ajax({
			
			url: "ajax/login.php?user="+user+"&pass="+pass,
			beforeSend: function() {
			$("#login-status").attr('class', 'info-notice');
			$("#login-status-message").text(MESSAGES['authenticating']);
			$("#login-status").css("visibility","visible","opacity","1");
			},

			success: function(response) {
			if(response == 'invalid_login'){
			$("#login-status").attr('class', 'error-notice');
			$("#login-status-message").text(MESSAGES[response]);
			$("#login-status").css("visibility","visible","opacity","1");
			}else if(response == 'success'){
			$("#login-status").attr('class', 'success-notice');
			$("#login-status-message").text(MESSAGES[response]);
			$("#login-status").css("visibility","visible","opacity","1");
			var delay = 2000; //Your delay in milliseconds
			setTimeout(function(){ window.location = 'panel.php'; }, delay);	
			}
			},
		}); // close ajax 
	  }
	}); // close btn-login function

	// cerrar session 

	$("#cerrar_session").click(function(){
		$.ajax({
			url: "ajax/logout.php",
			beforeSend: function(){
			$("#loginuser").html('<img src="images/loading.gif">');	
			},
			success: function(response){
			var delay = 2000; //Your delay in milliseconds
			setTimeout(function(){ window.location = 'index.php'; }, delay);	
			}

		});
	});

	/// 


}); // close document ready