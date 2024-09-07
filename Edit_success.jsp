<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Updated - Bookworm's Haven</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
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
            background: rgba(255, 255, 255, 0.95);
            border-radius: 12px;
            padding: 40px;
            margin: 100px auto;
            max-width: 600px;
            text-align: center;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            animation: fadeIn 1s ease-in-out;
        }
        .message-box h2 {
            color: #38a169;
            font-size: 2.5em;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        .message-box p {
            font-size: 1.2em;
            color: #555;
            margin-bottom: 30px;
            line-height: 1.6;
        }
        .message-box a {
            color: #3182ce;
            text-decoration: none;
            font-weight: bold;
            font-size: 1.1em;
            padding: 12px 24px;
            border-radius: 5px;
            background-color: #edf2f7;
            border: 1px solid #3182ce;
            transition: background-color 0.3s ease, color 0.3s ease;
        }
        .message-box a:hover {
            background-color: #3182ce;
            color: white;
        }
        footer {
            background: rgba(0, 0, 0, 0.7);
            color: white;
            text-align: center;
            padding: 30px;
            box-shadow: 0 -4px 12px rgba(0, 0, 0, 0.3);
            margin-top: auto;
            animation: slideUp 0.8s ease-in-out;
        }
        footer h2 {
            font-size: 1.8em;
            margin-bottom: 10px;
            color: #fed7d7;
            text-transform: uppercase;
        }
        footer p {
            font-size: 1.1em;
            margin: 0;
            line-height: 1.5;
            max-width: 700px;
            margin: 0 auto;
            color: #f7fafc;
        }
        footer img {
            max-width: 100px;
            margin-top: 15px;
            border-radius: 50%;
            border: 2px solid #edf2f7;
        }
        
        @keyframes fadeIn {
            0% { opacity: 0; transform: translateY(-30px); }
            100% { opacity: 1; transform: translateY(0); }
        }
        
        @keyframes slideUp {
            0% { opacity: 0; transform: translateY(40px); }
            100% { opacity: 1; transform: translateY(0); }
        }
        
        /* Mobile responsiveness */
        @media (max-width: 768px) {
            .message-box {
                margin: 50px auto;
                padding: 20px;
                max-width: 90%;
            }
            .message-box h2 {
                font-size: 2em;
            }
            .message-box p {
                font-size: 1em;
            }
            footer h2 {
                font-size: 1.5em;
            }
            footer p {
                font-size: 0.9em;
            }
        }
    </style>
</head>
<body>
    <div class="message-box">
        <h2>Book Updated Successfully</h2>
        <p>The book details have been successfully updated in the database. You can return to the home page or continue browsing more books.</p>
        <a href="home.jsp">Back to Home</a>
    </div>
    
    <footer>
        <h2>About Bookworm's Haven</h2>
        <img src="https://usagif.com/wp-content/uploads/gifs/book-47.gif" alt="Bookworm's Haven Logo"><p> At Bookworm's Haven, we provide a carefully curated collection of books, from modern bestsellers to timeless classics. Explore our wide range of genres and find your next favorite read today!</p>
        
    </footer>
</body>
</html>
