  	/*@filename login.js*/
  	
/**
  * @function _fnDisable
  *
  * @desc <b>Description:</b><br/>
  * Private method to on entering username and password, ‘login’ button becomes enabled
  *
  * <br/><br/><b>History:</b><br/>
  * 06/23/2019	NAG  added <br/>
  *
  * @return {null}
*/  	
  	
 var _fnDisable = function() {
	
	var submitBtn  = document.getElementById('submitButton');
    var ele 	   = document.getElementsByTagName('input'); 
    // LOOP THROUGH EACH ELEMENT.
    for (i = 0; i < ele.length; i++) {

        // CHECK THE ELEMENT TYPE.
        if (ele[i].type == 'text' && ele[i].value == '') {
            submitBtn.disabled = true;    
            return false;
        }
        else {
            submitBtn.disabled = false;   
        }
    }
    
}; //_fnDisable
	
/**
  * @function _fnSubmitViaAjax
  *
  * @desc <b>Description:</b><br/>
  * Private method to send the usename and password to DB
  *
  * <br/><br/><b>History:</b><br/>
  * 06/25/2019	NAG  added <br/>
  *
  * @return {null}
*/

var _fnSubmitViaAjax = function(event){	

    // process the form
    $('form').off("submit").submit(function(event) {

		 var formData = $('#login-form').serialize();
		 
        // process the form
        $.ajax({
            type        : 'POST', // define the type of HTTP verb we want to use (POST for our form)
            url         : "\authentication.cfc?method=processLogin", // the cfc method where we want to POST
            data		: formData,
            success		: function(response){
            	if(response == "true"){
            		//Successful Login Attempt
            		$("body").load("signedIn.cfm", function(){
            			document.title = "Home";
            		});
            	}   
            	else{
            		//Unsuccessful Login Attempt
            		$("#messageBox").html("Oops! The entered Username or Password does not match with the database.");
            	};       	
            },
            
            error : function(response){
            	alert(response);
            }
        });
        
        // stop the form from submitting the normal way and refreshing the page
        event.preventDefault();
    });
}; //_fnSubmitViaAjax


/**
  * @function _fnLogOutViaAjax
  *
  * @desc <b>Description:</b><br/>
  * Private method to log out button functionality back to 
  *
  * <br/><br/><b>History:</b><br/>
  * 06/25/2019	NAG  added <br/>
  *
  * @return {null}
*/

var _fnLogOutViaAjax = function(event){	

      $("body").load("index.cfm", function(){
			document.title = "Home";
		});
		
        // stop the form from submitting the normal way and refreshing the page
        event.preventDefault();
};

