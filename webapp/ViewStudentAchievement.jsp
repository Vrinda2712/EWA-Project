<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Development of Online College Year Book</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</head>

<body>
    
      <%
      if (request.getParameter("msg") != null) {%>
      <script>alert(' Details Updated Successfully..!');</script> 
      <%}%>
      <%
      if (request.getParameter("m1") != null) {%>
      <script>alert('Failed..!');</script> 
      <%}%>
    
    <!-- Main Header -->
    <header class="main-header">
        <center><h1>Development of Online College Year Book</h1></center>
    </header>
  
    <!-- Login Form -->
    <div class="form-div animated flip">
        
        <center><h2>Student Achievements</h2>
        <form action="ViewStudentAchievement1.jsp" method="post">
        <br>
        
        <select name="year" id="" required="">
        <option value="">--Select Year--</option>
        <option value="2018">2018</option>
        <option value="2019">2019</option>
        <option value="2020">2020</option>
        <option value="2021">2021</option>
        <option value="2022">2022</option>
        </select>
        <br>
        
        <select name="branch" id="" required="">
        <option value="">--Select Branch--</option>
        <option value="CSE">CSE</option>
        <option value="IT">IT</option>
        <option value="Civil">Civil</option>
        <option value="Mech">Mech</option>
        <option value="ECE">ECE</option>
        </select>
        <br>
        
        <br>
        <input type="submit" value="VIEW">
        <br>
        <br></center>
        </form>
    </div>
        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <br>
    <!-- Main Footer -->
    <footer class="main-footer">
    
    </footer>
</body>

</html>
