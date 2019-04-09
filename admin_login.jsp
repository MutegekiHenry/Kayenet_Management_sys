<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
    </head>

    <body>
        <h1>Login Page</h1>
        <center>
            <h2>Login Details</h2>
            <form action="validate_admin.jsp" method="post">
                <br/>Username:<input type="text" name="username">
                <br/>Password:<input type="password" name="password">
                <br/><input type="submit" value="Submit">
            </form>
        </center>
    </body>

    </html>