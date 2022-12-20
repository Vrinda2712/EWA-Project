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
    
    <!-- Main Header -->
    <header class="main-header">
        <center><h1>Development of Online College Year Book</h1></center>
    </header>
    
    <div class="form-div animated flip">
        
        <center><h2>Welcome Admin</h2></center>
       
    </div>
   
    <!-- Dropdown Navbar -->
    <nav>
         <ul>
            <li><a href="Index.html" class="active">Home</a></li>
            <li><a href="ViewTeacherAchievement.jsp">Teacher Achievements</a></li>
            <li><a href="ViewStudentAchievement.jsp">Student Achievements</a></li>
            <li><a href="Logout.jsp">Logout</a></li>
            
        </ul>
    </nav>
    <!-- Login Form -->
    <br/><br/><br/>
    
    <br/><br/><br/><br/><br/> 
    <br><br>
    <br><br><br>
    <br>
    <!-- Main Footer -->
    <footer class="main-footer">
    </footer>
</body>
</html>
