package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class TeacherUpdate
 */
public class TeacherUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor.
     */
    public TeacherUpdate() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub

		PrintWriter pw=res.getWriter();
		res.setContentType("text/html");
		String username = req.getParameter("username");
		String email = req.getParameter("email");
		String id = req.getParameter("id");
		String address = req.getParameter("address");
		String mobile = req.getParameter("mobile");
		try
		{
		PreparedStatement ps = con.prepareStatement("update reg set email='"+email+"',address='"+address+"',mobile='"+mobile+"' where username = '"+username+"' and id = '"+id+"'");
		ps.executeUpdate();
		res.sendRedirect("tupdateprofile.jsp?msg=success");
		}
		catch(Exception e1)
		{
		res.sendRedirect("tupdateprofile.jsp?m1=Failed");
		pw.println(e1.getMessage());
		}
		}
		public void destroy()
		{

	}

}
