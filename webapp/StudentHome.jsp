<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Development of Online College Year Book</title>
    </head>

<body>
    
     <%
     if (request.getParameter("msg") != null) {%>
     <script>alert('Login Success..!');</script> 
     <%}%>
    
    <header class="main-header">
        <center><h1>Development of Online College Year Book</h1></center>
    </header>
    
    <!-- Login Form -->
    <br/><br/><br/>
    <div class="form-div animated flip">
        <%
        String user = session.getAttribute("username").toString();
        %>
        <h2>Welcome <%=user%></h2>
       
    </div>
    <br/><br/><br/><br/><br/> 
    <br><br>
    <br><br><br>
    <br>
    <!-- Main Footer -->
    <footer class="main-footer">
    </footer>
</body>
</html>
