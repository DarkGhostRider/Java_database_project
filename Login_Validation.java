package book.com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login_Validation
 */
@WebServlet("/Login_Validation")
public class Login_Validation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login_Validation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String uname=req.getParameter("username");
		String pwd=req.getParameter("password");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8080/imsc7it106","root","abcd");
			PreparedStatement pst=con.prepareStatement("select username, password from bookstoreuser where username=? and password=?");
			pst.setString(1, uname);
			pst.setString(2, pwd);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				res.sendRedirect("home.jsp");
			}else {
				res.sendRedirect("login_error.jsp");
			}
		}catch(Exception e) {
			System.out.println(e);
		}

	}

}
