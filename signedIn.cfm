<!doctype html>
<html lang="en">
	<head>
		<cfinclude template="templates.cfm" >
	</head>
	<body>
		<div id="logout">
	        <h3 class="text-center text-white pt-5">Login Successful</h3>
	        <div class="container">
	            <div id="login-row" class="row justify-content-center align-items-center">
	                <div id="login-column" class="col-md-6">
	                    <div id="login-box" class="col-md-12">
	                       <form class="form-signout">
								<!---<cfdump var="#session.loggedin#" >--->
	    						<h3 class="text-center text-info"><i class="fa fa-hand-o-right" aria-hidden="true"></i>&nbsp;You are in!</h3>
	    						<!---<button class="btn btn-lg btn-danger btn-block" type="button" id="logoutbutton"><a href="index.cfm">Logout</button></a>--->
	    						<input type="submit" name="logoutButton" id="logoutButton" class="btn btn-lg btn-danger btn-block" onclick="_fnLogOutViaAjax(event)" value="Logout" >
	  						</form> 
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div> <!---Logout--->
	</body>
</html>
