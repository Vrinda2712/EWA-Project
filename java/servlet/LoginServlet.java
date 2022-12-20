package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;


/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor.
     */
    public LoginServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		PrintWriter pw=response.getWriter();
		response.setContentType("text/html");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String utype = request.getParameter("utype");
		if(utype.endsWith("Admin"))
		{
		String query = "select *from login where username='"+username+"' and password='"+password+"' and utype = '"+utype+"'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		if(rs.next())
		{
		response.sendRedirect("adminhome.jsp?msg=success");
		}
		else
		{
		response.sendRedirect("login.jsp?m1=Failed");
		}
		}
		if(utype.endsWith("Student"))
		{
		String query = "select *from login where username='"+username+"' and password='"+password+"' and utype = '"+utype+"'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		if(rs.next())
		{
		HttpSession session=response.getSession();
		session.setAttribute("user", username);
		response.sendRedirect("studenthome.jsp?msg=success");
		}
		else
		{
		response.sendRedirect("login.jsp?m1=Failed");
		}
		}
		if(utype.endsWith("Teacher"))
		{
		String query = "select *from login where username='"+username+"' and password='"+password+"' and utype = '"+utype+"'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		if(rs.next()){
		HttpSession session=response.getSession();
		session.setAttribute("user", username);
		response.sendRedirect("teacherhome.jsp?msg=success");
		}
		else
		{
		response.sendRedirect("login.jsp?m1=Failed");
		}
		}
		}
		public void destroy()
		{
		}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
