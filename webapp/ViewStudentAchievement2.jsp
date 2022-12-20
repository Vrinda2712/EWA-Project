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
    <!-- Dropdown Navbar -->
    <!-- Login Form -->
    <%@page import="java.sql.*"%>
   
   <%@ page import = "java.sql.Connection" %>
   
    <%@ page session="true" %>
    
        <%
        String year = request.getParameter("year");
        String branch = request.getParameter("branch");
        String username = request.getParameter("username");
        
        String sql="select * from studentevents where year = '"+year+"' and username = '"+username+"' and branch = '"+branch+"'"; 
	
        Class.forName("com.mysql.jdbc.Driver");
    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/yearbook","root","Y@v20215100");
    	
        
        Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(sql);
        String rno = null;
        String image = null;
        String fbid = null;
        String dob = null;
        String email = null;
        String mobile = null;
        String address = null;
        String about = null;
        
        while(rs.next()){
            rno = rs.getString("rno");
            image = rs.getString("image");
            dob = rs.getString("dob");
            email = rs.getString("email");
            mobile = rs.getString("mobile");
            fbid = rs.getString("fbid");
            address = rs.getString("address");
            about = rs.getString("about");
        }
	%>
        <br/><br/>
        <center>
     <br/>   
    <h2><font color="black" >Student Achievement </font></h2>
    <table width="201" border="1.5" cellpadding="0" cellspacing="0"  >

    <form action="StudentUpdate.jsp" method="post">
    <tr>
    <td width="126" rowspan="14"><div class="style7" style="margin:10px 13px 10px 13px;" >
    <img height="200" width="120" src="Gallery\<%=image%>"></img></div></td>
    </tr>

    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">  Name : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
    <input type="text" name="username" size="25" readonly="" value="<%=username%>"> </div></td>
    </tr>

    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Branch : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
    <input type="text" name="branch" size="25" readonly="" value="<%=branch%>"></div></td>
    </tr>
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Year : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
    <input type="text" name="year" size="25" readonly="" value="<%=year%>"></div></td>
    </tr>
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">  Roll No : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
    <input type="text" name="rno" size="25" required="" value="<%=rno%>"> </div></td>
    </tr>

    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Date of Birth : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
    <input type="text" name="dob" size="25" required="" value="<%=dob%>"></div></td>
    </tr>
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black"> Email : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
    <input type="text" name="email" size="25" required="" value="<%=email%>"> </div></td>
    </tr>

    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Mobile : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
    <input type="text" name="mobile" size="25" required="" value="<%=mobile%>"></div></td>
    </tr>
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Face Book ID : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
    <input type="text" name="fbid" size="25" required="" value="<%=fbid%>"></div></td>
    </tr>
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black"> Address : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
    <input type="text" name="address" size="25" required="" value="<%=address%>"> </div></td>
    </tr>

    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">About him/her : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
    <input type="text" name="about" size="25" required="" value="<%=about%>"></div></td>
    </tr>
    
    <tr>
    <td height="43" rowspan="3"></td>
    <td align="left" valign="middle">
    <p>
    <input name="submit" type="submit" value="UPDATE" /><br/><br/>
    </p>
    <div align="right">
    </div></td>
    </tr>
    </form>
    
    </table>
    <br/><br/><a href="ViewStudentAchievement.jsp"><button type="button">Back</button></a></div></td>
    </center>
        <br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <br>
    <!-- Main Footer -->
    <footer class="main-footer">
    
    </footer>
</body>

</html>
