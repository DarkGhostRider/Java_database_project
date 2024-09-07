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
 * Servlet implementation class EditAction
 */
@WebServlet("/EditAction")
public class EditAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		res.getWriter().append("Served at: ").append(req.getContextPath());
		res.setContentType("text/html");
		String bid=req.getParameter("bid");
		String bn=req.getParameter("bn");
		String ba=req.getParameter("ba");
		String bp=req.getParameter("bp");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:8080/imsc7it106","root","abcd");
			PreparedStatement pst=con.prepareStatement("update bookstore set book_name=?, book_author=?, price=? where id=?");
			pst.setString(1,bn);
			pst.setString(2,ba);
			pst.setString(3,bp);
			pst.setString(4,bid);

			pst.executeUpdate();
			res.sendRedirect("Edit_success.jsp");
			}catch(Exception e) {
				System.out.println(e);
			}
		
	}

}
