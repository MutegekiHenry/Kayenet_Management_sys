<%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.ResultSet"%>
        <%@page import="java.sql.Statement"%>
            <%@page import="java.sql.Connection"%>
                <%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "test";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
                    <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from users where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
                        <!DOCTYPE html>
                        <html>

                        <body>
                            <h1>Update data from database in jsp</h1>
                            <form method="post" action="update-process.jsp">
                                <input type="hidden" name="id" value="<%=resultSet.getString(" id ") %>">
                                <input type="text" name="id" value="<%=resultSet.getString(" id ") %>">
                                <br> First name:<br>
                                <input type="text" name="first_name" value="<%=resultSet.getString(" first_name ") %>">
                                <br> Last name:<br>
                                <input type="text" name="last_name" value="<%=resultSet.getString(" last_name ") %>">
                                <br> City name:<br>
                                <input type="text" name="city_name" value="<%=resultSet.getString(" city_name ") %>">
                                <br> Email Id:<br>
                                <input type="email" name="email" value="<%=resultSet.getString(" email ") %>">
                                <br><br>
                                <input type="submit" value="submit">
                            </form>
                            <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
                        </body>

                        </html>