<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Deleted - Bookworm's Haven</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://images.unsplash.com/photo-1512820790803-83ca734da794') no-repeat center center fixed;
            background-size: cover;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        .message-box {
            background: rgba(255, 255, 255, 0.9); /* Light transparent white */
            border-radius: 8px;
            padding: 30px;
            margin: 50px auto;
            max-width: 500px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }
        .message-box h2 {
            color: #e53e3e;
            font-size: 2em;
            margin-bottom: 20px;
        }
        .message-box p {
            color: #333;
            font-size: 1.1em;
        }
        .message-box a {
            color: #3182ce;
            text-decoration: none;
            font-weight: bold;
            display: inline-block;
            margin-top: 20px;
        }
        .message-box a:hover {
            text-decoration: underline;
        }
        footer {
            background: rgba(255, 255, 255, 0.9); /* Light transparent white */
            color: #333;
            text-align: center;
            padding: 20px;
            box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.3);
            margin-top: auto;
        }
        footer h2 {
            font-size: 1.5em;
            margin-bottom: 10px;
        }
        footer p {
            font-size: 1em;
            margin: 0;
        }
        footer img {
            max-width: 100px;
            margin-top: 10px;
            border-radius: 8px;
        }
    </style>
</head>
<body>
    <div class="message-box">
        <h2>Book Deleted Successfully</h2>
        <p>The book has been successfully removed from the database. You can go back to the main page or continue browsing.</p>
        <a href="home.jsp">Back to Home</a>
    </div>
    
    <footer>
        <h2>About Bookworm's Haven</h2>
        <p>At Bookworm's Haven, we offer a diverse range of books from modern bestsellers to timeless classics. Our mission is to provide an exceptional book-buying experience with a focus on customer satisfaction. Discover your next favorite book with us!</p>
    </footer>
</body>
</html>
