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
 * Servlet implementation class list_book
 */
@WebServlet("/list_book")
public class list_book extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public list_book() {
        super();
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8080/imsc7it106", "root", "abcd");
            PreparedStatement pst = con.prepareStatement("select id, book_name, book_author, price from bookstore");
            ResultSet rs = pst.executeQuery();

            out.println("<html>");
            out.println("<head>");
            out.println("<meta charset='UTF-8'>");
            out.println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
            out.println("<title>Book List - Bookworm's Haven</title>");
            out.println("<style>");
            
            // General CSS styling
            out.println("body {");
            out.println("    font-family: Arial, sans-serif;");
            out.println("    background: url('https://static01.nyt.com/images/2020/12/04/books/04CRITICSPICKS-COMBO/00BOOKCOMBO-articleLarge.jpg?quality=75&auto=webp&disable=upscale') no-repeat center center fixed;");
            out.println("    background-size: cover;");
            out.println("    margin: 0;");
            out.println("    padding: 0;");
            out.println("    display: flex;");
            out.println("    flex-direction: column;");
            out.println("    min-height: 100vh;");
            out.println("}");
            out.println(".container {");
            out.println("    background: rgba(255, 255, 255, 0.9);");
            out.println("    padding: 40px;");
            out.println("    margin: 50px auto;");
            out.println("    max-width: 1000px;");
            out.println("    border-radius: 8px;");
            out.println("    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);");
            out.println("    text-align: center;");
            out.println("    transition: transform 0.3s ease-in-out;");
            out.println("}");
            out.println(".container:hover {");
            out.println("    transform: translateY(-10px);");
            out.println("}");
            out.println("h1 {");
            out.println("    font-size: 2.5em;");
            out.println("    color: #333;");
            out.println("    margin-bottom: 20px;");
            out.println("    text-transform: uppercase;");
            out.println("    letter-spacing: 2px;");
            out.println("}");
            out.println("a {");
            out.println("    text-decoration: none;");
            out.println("    color: #007BFF;");
            out.println("    font-size: 1.5em;");
            out.println("    display: inline-block;");
            out.println("    margin: 10px 0;");
            out.println("    transition: color 0.3s ease, transform 0.3s ease;");
            out.println("}");
            out.println("a:hover {");
            out.println("    color: #0056b3;");
            out.println("    transform: scale(1.1);");
            out.println("}");
            out.println("footer {");
            out.println("    background: rgba(0, 0, 0, 0.8);");
            out.println("    color: white;");
            out.println("    text-align: center;");
            out.println("    padding: 20px;");
            out.println("    margin-top: auto;");
            out.println("    position: relative;");
            out.println("    bottom: 0;");
            out.println("    width: 100%;");
            out.println("}");
            out.println("footer h2 {");
            out.println("    margin-bottom: 10px;");
            out.println("    font-size: 1.5em;");
            out.println("    animation: fadeIn 2s;");
            out.println("}");
            out.println("footer p {");
            out.println("    font-size: 1em;");
            out.println("    animation: fadeIn 2s 1s;");
            out.println("}");
            out.println("@keyframes fadeIn {");
            out.println("    from { opacity: 0; }");
            out.println("    to { opacity: 1; }");
            out.println("}");
            out.println("</style>");
            out.println("</head>");

            // Body section
            out.println("<body>");
            out.println("<div class='container'>");
            out.println("<h1>Available Books</h1>");
            while (rs.next()) {
                String bid = rs.getString(1);
                String bn = rs.getString(2);
                String ba = rs.getString(3);
                String bp = rs.getString(4);
                
                String linkurl = "detail?id=" + bid + "&book_name=" + bn + "&book_author=" + ba + "&price=" + bp;
                out.println("<a href='" + linkurl + "'><h2>" + bn + "</h2></a><br>");
            }
            out.println("</div>");

            // Footer section
            out.println("<footer>");
            out.println("<h2>About Bookworm's Haven</h2>");
            out.println("<p>At Bookworm's Haven, we believe in the power of books to transform minds and hearts. Whether you're looking for the latest bestseller or a classic, we've got you covered. Visit us for a wide range of literary treasures.</p>");
            out.println("</footer>");
            out.println("</body>");
            out.println("</html>");
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
