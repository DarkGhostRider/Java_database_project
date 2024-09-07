package book.com;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class All_Book_List
 */
@WebServlet("/All_Book_List")
public class All_Book_List extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public All_Book_List() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8080/imsc7it106", "root", "abcd");
            PreparedStatement pst = con.prepareStatement("SELECT * FROM bookstore");
            ResultSet rs = pst.executeQuery();
            
            out.println("<html>");
            out.println("<head>");
            out.println("<meta charset='UTF-8'>");
            out.println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
            out.println("<title>All Books - Bookworm's Haven</title>");
            out.println("<style>");
            out.println("body {");
            out.println("    font-family: Arial, sans-serif;");
            out.println("    background: url('https://ca-times.brightspotcdn.com/dims4/default/df292e0/2147483647/strip/false/crop/5472x3648+0+0/resize/1486x991!/quality/75/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2Fd7%2F01%2Fc55ebf624d97823955e6c14bf480%2Fhttps-delivery-gettyimages.com%2Fdownloads%2F1487509661') no-repeat center center fixed;");
            out.println("    background-size: cover;");
            out.println("    color: #333;");
            out.println("    margin: 0;");
            out.println("    padding: 0;");
            out.println("    display: flex;");
            out.println("    flex-direction: column;");
            out.println("    min-height: 100vh;");
            out.println("}");
            out.println(".container {");
            out.println("    background: rgba(255, 255, 255, 0.9);");
            out.println("    border-radius: 8px;");
            out.println("    padding: 40px;");
            out.println("    margin: 50px auto;");
            out.println("    max-width: 1200px;");
            out.println("    text-align: center;");
            out.println("    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);");
            out.println("}");
            out.println(".book-list {");
            out.println("    display: flex;");
            out.println("    flex-wrap: wrap;");
            out.println("    justify-content: center;");
            out.println("    gap: 20px;");
            out.println("}");
            out.println(".book-card {");
            out.println("    background: #fff;");
            out.println("    border-radius: 8px;");
            out.println("    padding: 20px;");
            out.println("    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);");
            out.println("    width: 250px;");
            out.println("    text-align: center;");
            out.println("    transition: transform 0.3s, box-shadow 0.3s;");
            out.println("}");
            out.println(".book-card h3 {");
            out.println("    margin: 10px 0;");
            out.println("    font-size: 1.5em;");
            out.println("}");
            out.println(".book-card p {");
            out.println("    margin: 5px 0;");
            out.println("    font-size: 1.1em;");
            out.println("}");
            out.println(".book-card:hover {");
            out.println("    transform: scale(1.05);");
            out.println("    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);");
            out.println("}");
            out.println("footer {");
            out.println("    background: rgba(0, 0, 0, 0.9);");
            out.println("    color: #333;");
            out.println("    text-align: center;");
            out.println("    padding: 20px;");
            out.println("    box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.3);");
            out.println("    margin-top: auto;");
            out.println("}");
            out.println("footer h2 {");
            out.println("    color: white;");
            out.println("    font-size: 1.5em;");
            out.println("    margin-bottom: 10px;");
            out.println("}");
            out.println("footer p {");
            out.println("    color: white;");
            out.println("    font-size: 1em;");
            out.println("    margin: 0;");
            out.println("}");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class='container'>");
            out.println("<h2>All Books</h2>");
            out.println("<div class='book-list'>");
            
            while (rs.next()) {
                String bn = rs.getString("book_name");
                String ba = rs.getString("book_author");
                String bp = rs.getString("price");
                
                out.println("<div class='book-card'>");
                out.println("<h3>" + bn + "</h3>");
                out.println("<p><strong>Author:</strong> " + ba + "</p>");
                out.println("<p><strong>Price:</strong> $" + bp + "</p>");
                out.println("</div>");
            }
            
            out.println("</div>");
            out.println("<br><br><br><br><a href='home.jsp'>Back to Home</a>");
            out.println("</div>");
            out.println("<footer>");
            out.println("<h2>About Bookworm's Haven</h2>");
            out.println("<p>At Bookworm's Haven, we offer a diverse range of books from modern bestsellers to timeless classics. Our mission is to provide an exceptional book-buying experience with a focus on customer satisfaction. Discover your next favorite book with us!</p>");
            out.println("</footer>");
            out.println("</body>");
            out.println("</html>");
            
        } catch (Exception e) {
        	System.out.println(e);
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
