package book.com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Edit_Form
 */
@WebServlet("/Edit_Form")
public class Edit_Form extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Edit_Form() {
        super();
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        String bid = req.getParameter("bid");
        String bn = req.getParameter("bn");
        String bp = req.getParameter("bp");
        String ba = req.getParameter("ba");

        PrintWriter out = res.getWriter();

        out.println("<html>");
        out.println("<head>");
        out.println("<meta charset='UTF-8'>");
        out.println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
        out.println("<title>Edit Book Details - Bookworm's Haven</title>");
        out.println("<style>");

        // Styling for the page
        out.println("body {");
        out.println("    font-family: Arial, sans-serif;");
        out.println("    background: url('https://images.squarespace-cdn.com/content/v1/612514603ab7f8559008fdb2/628650c4-722d-4773-847f-f48469eab2da/shiromani-kant-tHKlDb5EzN4-unsplash.jpg') no-repeat center center fixed;");
        out.println("    background-size: cover;");
        out.println("    margin: 0;");
        out.println("    padding: 0;");
        out.println("    display: flex;");
        out.println("    flex-direction: column;");
        out.println("    min-height: 100vh;");
        out.println("}");

        out.println(".container {");
        out.println("    background-color: rgba(255, 255, 255, 0.9);");
        out.println("    margin: auto;");
        out.println("    padding: 40px;");
        out.println("    max-width: 900px;");
        out.println("    display: flex;");
        out.println("    align-items: center;");
        out.println("    border-radius: 10px;");
        out.println("    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);");
        out.println("}");

        out.println(".container img {");
        out.println("    width: 40%;");
        out.println("    height: auto;");
        out.println("    margin-right: 30px;");
        out.println("    border-radius: 8px;");
        out.println("}");

        out.println(".form-section {");
        out.println("    width: 60%;");
        out.println("}");

        out.println("form {");
        out.println("    display: flex;");
        out.println("    flex-direction: column;");
        out.println("}");

        out.println("input[type='text'] {");
        out.println("    padding: 10px;");
        out.println("    margin: 10px 0;");
        out.println("    font-size: 1.1em;");
        out.println("    border-radius: 5px;");
        out.println("    border: 1px solid #ccc;");
        out.println("}");

        out.println("input[type='submit'] {");
        out.println("    padding: 10px 20px;");
        out.println("    background-color: #28a745;");
        out.println("    color: white;");
        out.println("    border: none;");
        out.println("    border-radius: 5px;");
        out.println("    cursor: pointer;");
        out.println("    font-size: 1.1em;");
        out.println("}");

        out.println("input[type='submit']:hover {");
        out.println("    background-color: #218838;");
        out.println("}");

        // Footer section with sticky behavior
        out.println("footer {");
        out.println("    background-color: rgba(0, 0, 0, 0.8);");
        out.println("    color: white;");
        out.println("    text-align: center;");
        out.println("    padding: 20px;");
        out.println("    position: absolute;");
        out.println("    bottom: 0;");
        out.println("    width: 100%;");
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

        // Left-hand image
        out.println("<img src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1VtYZtJY5FWQUQDCrzyHr8x-QL3cAAr6F9vHZUBqLG7hNwCbmE5nIYSVNWSFJmBb4a08&usqp=CAU' alt='Book Image'>");

        // Form section
        out.println("<div class='form-section'>");
        out.println("<h1>Edit Book Details</h1>");
        out.println("<form action='EditAction' method='get'>");
        out.println("<input type='hidden' value='" + bid + "' name='bid'>");
        out.println("<input type='text' value='" + bn + "' placeholder='Book Name' name='bn' required>");
        out.println("<input type='text' value='" + ba + "' placeholder='Book Author' name='ba' required>");
        out.println("<input type='text' value='" + bp + "' placeholder='Book Price' name='bp' required>");
        out.println("<input type='submit' value='Submit'>");
        out.println("</form>");
        out.println("</div>");

        out.println("</div>");

        // Footer section
        out.println("<footer>");
        out.println("<h2>About Bookworm's Haven</h2>");
        out.println("<p>At Bookworm's Haven, we believe in the power of books to transform minds and hearts. Whether you're looking for the latest bestseller or a classic, we've got you covered. Visit us for a wide range of literary treasures.</p>");
        out.println("</body>");
        out.println("</html>");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        doGet(req, res);
    }
}
