package book.com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname=req.getParameter("username");
		String email=req.getParameter("email");
		String pwd=req.getParameter("password");
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8080/imsc7it106", "root", "abcd");
				PreparedStatement pst=con.prepareStatement("insert into bookstoreuser(username,email,password) VALUES(?,?,?)");
				pst.setString(1, uname);
				pst.setString(2, email);
				pst.setString(3, pwd);
				pst.executeUpdate();
				res.sendRedirect("home.jsp");
			}catch(Exception e) {
				System.out.println(e);
			}
		
	}

}
