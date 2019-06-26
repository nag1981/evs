

Sample Login/Logout Standalone Page in ColdFusion for Enviance
by Nagarjuna Yedla

This code exercise demonstrates the use of ColdFusion and JavaScript to create single-page login/logout workflow.

CDN
The 'cdn' directory contains JavaScript helper libraries used in the exercise.

jQuery: interact with DOM objects
Bootstrap: page layout
Fontawesome: Site icons

URL: http://127.0.0.1:8500/evs/index.cfm

Initial Page Setup
On initial load the login and password form fields and empty and the "Login" button is disabled.

Once values are present for both the login and password the "Login" button becomes enabled.

If the page is reloaded or if the user clears either field the "Login" button revert back to disabled.

Database
This exercise uses Oracle 12c as the database with four sample user records in 'Login_user' table. see user.sql for the SQL to create and populate the table.
The exercise was written using a Oracle 12c database on the back-end. The directory "database" contains a SQL file named 'login_user_create_script.sql' for creating and populating the login_user table.

The exercise uses a datasource named 'log_signin' which is defined near the top of the Application.cfc.

Workflow
When the login button is clicked authentication is performed on the server. If the login and password are correct the login form disappears and a success message title "You are in" appears. A "Logout" button also appears. When the "Logout" button is clicked the ColdFusion session is terminated and the login form reappears.

No Page Refresh
As per the specifications, the work flow includes no page refreshes. Content is loaded display dynamically based on Ajax calls to the relevant login/logout logic.

Successful Login
Upon successful login the login form disappears and a success message is displayed in the page. A logout button also appears. When you click on logout button without page refresh comes back to login page.

Unsuccessful Login
1.The username or password is not in the database,  throws an error.

Hashed Password
Passwords and appended with the user's unique value and hashed with SHA-512, UTF-8. The hashing logic avails of the ColdFusion component.

Sample User Credentials
The following are the login and passwords for the sample users:
Username 1 : yedla004
password   : Superb@123
hashed_password in database: 9E533033049E38E933BF5036616D8F9A9A26A9BE229A86FF1DAD6758B4AD0BDBA279DB7557AD7BE5844984BAFAEB9562CBF5424413D42E74E18BFB773DC3FE5E

Username 2: yedla005
password  : Enviance@123
hashed_password in database:466C221C47B5E209FF85639CDC1194A98BE4617F316910254500FDA52B610E02B9EDB8D7F218912C5138E595B9C1CC20AB80095737CD15CC0279B2C825605075  (Example:  <cfoutput>#hash("Enviance@123", "SHA-512", "UTF-8")#</cfoutput>)

Logout
When the user clicked the "Logout" button the ColdFusion session variables are cleared and the session is reset. The login form reappears.

Screenshots
The "screenshots" directory contains sample screenshots of the user interface.
