package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class AddTeacherAchievement
 */
public class AddTeacherAchievement extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor.
     */
    public AddTeacherAchievement() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		res.getWriter().append("Served at: ").append(req.getContextPath());

		PrintWriter pw=res.getWriter();
		res.setContentType("text/html");
		String username = req.getParameter("username");
		String year = req.getParameter("year");
		String designation = req.getParameter("designation");
		String branch = req.getParameter("branch");
		String dob = req.getParameter("dob");
		String qualificaion = req.getParameter("qualificaion");
		String email = req.getParameter("email");
		String mobile = req.getParameter("mobile");
		String exp = req.getParameter("exp");
		String specialization = req.getParameter("specialization");
		String subjects = req.getParameter("subjects");
		String image = req.getParameter("image");
		try
		{
		PreparedStatement ps = con.prepareStatement("insert into teacherevents(username,designation,yr,branch,dob,qualificaion,email,mobile,exp1,specialization,subjects,image) values(?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,username);
		ps.setString(2,designation);
		ps.setString(3,year);
		ps.setString(4,branch);
		ps.setString(5,dob);
		ps.setString(6,qualificaion);
		ps.setString(7,email);
		ps.setString(8,mobile);
		ps.setString(9,exp);
		ps.setString(10,specialization);
		ps.setString(11,subjects);
		ps.setString(12,image);
		ps.executeUpdate();
		res.sendRedirect("addtachievements.jsp?msg=success");
		}
		catch(Exception e1)
		{
		res.sendRedirect("addtachievements.jsp?m1=Failed");
		pw.println(e1.getMessage());
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
