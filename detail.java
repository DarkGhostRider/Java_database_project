package book.com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class detail
 */
@WebServlet("/detail")
public class detail extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public detail() {
        super();
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        
        String boid = req.getParameter("id");
        String bnm = req.getParameter("book_name");
        String bps = req.getParameter("price");
        String ba = req.getParameter("book_author");
        
        String linkurl = "delete?bid=" + boid;
        String linkurl2 = "Edit_Form?bid=" + boid + "&bn=" + bnm +"&ba="+ba+"&bp=" + bps;

        PrintWriter out = res.getWriter();
        req.setAttribute("id", boid);

        out.println("<html>");
        out.println("<head>");
        out.println("<meta charset='UTF-8'>");
        out.println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
        out.println("<title>Book Details - Bookworm's Haven</title>");
        out.println("<style>");
        
        // General styling
        out.println("body {");
        out.println("    font-family: Arial, sans-serif;");
        out.println("    background: url('https://images.unsplash.com/photo-1512820790803-83ca734da794') no-repeat center center fixed;");
        out.println("    background-size: cover;");
        out.println("    margin: 0;");
        out.println("    padding: 0;");
        out.println("    display: flex;");
        out.println("    flex-direction: column;");
        out.println("    min-height: 100vh;");
        out.println("}");

        out.println(".container {");
        out.println("    background-color: rgba(255, 255, 255, 0.9);");
        out.println("    padding: 30px;");
        out.println("    margin: 50px auto;");
        out.println("    max-width: 600px;");
        out.println("    border-radius: 10px;");
        out.println("    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);");
        out.println("    text-align: center;");
        out.println("}");

        out.println("h1 {");
        out.println("    font-size: 2.5em;");
        out.println("    color: #333;");
        out.println("    margin-bottom: 20px;");
        out.println("    text-transform: capitalize;");
        out.println("    letter-spacing: 1px;");
        out.println("}");

        out.println(".book-details {");
        out.println("    margin-bottom: 20px;");
        out.println("    color: #555;");
        out.println("    font-size: 2em;");
        out.println("}");

        out.println(".book-details img {");
        out.println("    max-width: 100%;");
        out.println("    height: 175px;");
        out.println("    border-radius: 8px;");
        out.println("    margin-bottom: 20px;");
        out.println("}");

        out.println(".actions a {");
        out.println("    display: inline-block;");
        out.println("    margin: 10px;");
        out.println("    padding: 10px 20px;");
        out.println("    background-color: #007BFF;");
        out.println("    color: white;");
        out.println("    text-decoration: none;");
        out.println("    border-radius: 5px;");
        out.println("    transition: background-color 0.3s ease;");
        out.println("}");

        out.println(".actions a:hover {");
        out.println("    background-color: #0056b3;");
        out.println("}");

        out.println("footer {");
        out.println("    background: rgba(0, 0, 0, 0.8);");
        out.println("    color: white;");
        out.println("    text-align: center;");
        out.println("    padding: 20px;");
        out.println("    margin-top: auto;");
        out.println("    width: 100%;");
        out.println("    position: relative;");
        out.println("}");

        out.println("footer p {");
        out.println("    font-size: 1em;");
        out.println("    margin: 0;");
        out.println("}");
        
        out.println("</style>");
        out.println("</head>");
        
        // Body section
        out.println("<body>");
        out.println("<div class='container'>");
        out.println("<h1>Book Details</h1>");
        out.println("<div class='book-details'>");
        out.println("<img src='https://usagif.com/wp-content/uploads/gifs/book-47.gif' alt='Book Cover'>");
        out.println("<p><strong>Book Name:</strong> " + bnm + "</p>");
        out.println("<p><strong>Price:</strong> $" + bps + "</p>");
        out.println("</div>");

        out.println("<div class='actions'>");
        out.println("<a href='" + linkurl + "'>Delete</a>");
        out.println("<a href='" + linkurl2 + "'>Edit</a>");
        out.println("</div>");
        out.println("</div>");

        // Footer section
        out.println("<footer>");
        out.println("<h2>About Bookworm's Haven</h2>");
        out.println("<p>At Bookworm's Haven, we offer a diverse range of books from modern bestsellers to timeless classics. Our mission is to provide an exceptional book-buying experience with a focus on customer satisfaction. Discover your next favorite book with us!</p>");
        out.println("</footer>");

        out.println("</body>");
        out.println("</html>");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        doGet(req, res);
    }
}
