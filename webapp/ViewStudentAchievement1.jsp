<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Development of Online College Year Book</title>
    </head>

<body>
    
        
    
    <!-- Main Header -->
    <header class="main-header">
        <center><h1>Development of Online College Year Book</h1></center>
    </header>
    <!-- Login Form -->
    <%@page import="java.sql.*"%>
<%@ page import = "java.sql.Connection" %>
    <%@ page session="true" %>
    
        <%
        String year = request.getParameter("year");
        String branch = request.getParameter("branch");
        
       
       String sql="select * from studentevents where year = '"+year+"' and branch = '"+branch+"'"; 

       Class.forName("com.mysql.jdbc.Driver");
   	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/yearbook","root","Y@v20215100");
   	
       
       Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(sql);
        if(rs.next()){
        
        String sql2="select * from studentevents where year = '"+year+"' and branch = '"+branch+"'"; 
	Statement st2=con.createStatement();
	ResultSet rs1=st2.executeQuery(sql2);
	%>
        <br/><br/>
         <center>
             <h2><font color="black" size="5"> Student Achievements</font></h2>
        <style>
        td{
            text-align: center;
            height: 25px;
        }
        th{
            text-align: center;
            height: 25px;
        }
           
        </style>
        <table border="2" width="90%">

        <tr style="background-color: brown">
        <th><font color="black"> Name</th>
        <th><font color="black">Year</th>
        <th><font color="black">Branch</th>
        <th><font color="black">View Details</th>

        </tr>

        <%                while (rs1.next()) {
        %>

        <tr>
        <td><font color="black"><%=rs1.getString("username")%></td>
        <td><font color="black"><%=rs1.getString("yr")%></td>
        <td><font color="black"><%=rs1.getString("branch")%></td>
        <td><a href="ViewStudentAchievement2.jsp?username=<%=rs1.getString("username")%>&year=<%=rs1.getString("yr")%>&branch=<%=rs1.getString("branch")%>"><button type="button">View Details</button></a></td>
        </tr>
        <%
            }
        }
        else{
         out.println("<br/><br/><br/><br/><br/><center><font color='red' size='5'>No Achievements to Display...</font></center> ");
        }
        %>
        </table>
         <br/><br/><a href="ViewStudentAchievement.jsp"><button type="button">Back</button></a>
        </center> 
        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <br>
    <!-- Main Footer -->
    <footer class="main-footer">
       
    </footer>
</body>

</html>
