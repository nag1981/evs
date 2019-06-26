<!--- Please insert your code here --->
<!doctype html>
<html lang="en">
	<head>
		<cfinclude template="templates.cfm" >
		<title> Home</title>
	</head>
		<body>
			<!---Login form--->
			<div id="login">
		        <h3 class="text-center text-white pt-5">Login form</h3>
		        <div class="container">
		            <div id="login-row" class="row justify-content-center align-items-center">
		                <div id="login-column" class="col-md-6">
		                    <div id="login-box" class="col-md-12">
		                        <form id="login-form" class="form" action="" method="post">
		                            <h3 class="text-center text-info"><i class="fa fa-users" aria-hidden="true"></i>&nbsp;Please Sign-in</h3>
		                            <div class="form-group">
		                                <label for="username" class="text-info">UserName:</label><br>
		                                <input type="text" name="username" id="username" placeholder="User Name"  class="form-control">
		                            </div>
		                            <div class="form-group">
		                                <label for="password" class="text-info">Password:</label><br>
		                                <input type="password" name="password" id="password" class="form-control" placeholder="Password" onchange="_fnDisable(this)" >
		                            </div>
		                            <div class="form-group">
		                                <input type="submit" name="submitButton" id="submitButton" class="btn btn-info btn-md enableOnInput" onclick="_fnSubmitViaAjax(event)" value="Login" disabled>
		                                <!---<button class="btn btn-lg btn-primary btn-block" type="button" id="loginbutton">Login</button>--->	
		                            </div>
		                        </form>
		                        <div id="messageBox" style="color:red"></div>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div> <!---Login form--->
		</body>
</html>