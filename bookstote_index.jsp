<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bookstore</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #fbc2eb, #a6c0fe);
            color: #333;
            overflow-x: hidden;
        }
        .navbar {
            background-color: #1a202c;
            padding: 15px 20px;
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            z-index: 1000;
        }
        .navbar h1 {
            color: #fff;
            margin: 0;
        }
        .navbar a {
            color: #fff;
            text-decoration: none;
            margin-left: 20px;
            font-size: 16px;
            padding: 10px 20px;
            border-radius: 4px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .navbar a:hover {
            background-color: #4a5568;
            transform: scale(1.05);
        }
        .hero-image {
            width: 100%;
            height: 500px;
            object-fit: cover;
            margin-top: 60px; /* To account for fixed navbar */
            position: relative;
            z-index: 1;
        }
        .welcome-section {
            position: absolute;
            top: 25%;
            left: 0;
            right: 0;
            text-align: center;
            z-index: 2;
            color: white;
        }
        .welcome-section h1 {
            font-size: 3em;
            margin: 0;
            padding: 20px;
            background: rgba(0, 0, 0, 0.5);
            border-radius: 8px;
        }
        .welcome-section p {
            font-size: 1.25em;
            background: rgba(0, 0, 0, 0.5);
            border-radius: 8px;
            padding: 10px;
        }
        .content {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            text-align: center;
        }
        .content img {
            width: 100%;
            height: auto;
            border-radius: 10px;
            margin-bottom: 20px;
        }
        .content h2 {
            color: #2d3748;
            font-size: 2.5em;
            margin-bottom: 10px;
        }
        .content p {
            color: #4a5568;
            font-size: 1.2em;
        }
        .button {
            display: inline-block;
            background-color: #f56565;
            color: #fff;
            text-decoration: none;
            padding: 15px 30px;
            border-radius: 8px;
            font-size: 18px;
            margin: 10px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .button:hover {
            background-color: #e53e3e;
            transform: scale(1.05);
        }
        footer {
            background-color: #1a202c;
            color: #fff;
            text-align: center;
            padding: 20px;
            box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.3);
        }
        .footer-content {
            max-width: 1200px;
            margin: 0 auto;
        }
        .footer-content h2 {
            color: #fbd38d;
            font-size: 2em;
            margin-bottom: 15px;
        }
        .footer-content p {
            font-size: 1.2em;
            margin-bottom: 15px;
        }
        .footer-content .button {
            background-color: #edf2f7;
            color: #1a202c;
            padding: 10px 20px;
            font-size: 16px;
        }
        .footer-content .button:hover {
            background-color: #e2e8f0;
        }
        .graph-container {
            text-align: center;
            margin: 20px auto;
            max-width: 800px;
        }
        .graph-container img {
            width: 100%;
            height: auto;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <div class="navbar">
        <h1>Bookworm's Haven</h1>
        <div>
            <a href="login.jsp" class="button">Login</a>
            <a href="signup.jsp" class="button">Signup</a>
        </div>
    </div>
    
    <img src="https://assets-eu-01.kc-usercontent.com/bcd02f72-b50c-0179-8b4b-5e44f5340bd4/a21032f3-b9b0-4b56-8dd6-93ff983cd3ae/book-divider-image.png?w=700&h=394&auto=format&bg=%23efefef&fit=crop" alt="Bookstore Banner" class="hero-image">
    
    <div class="welcome-section">
        <h1>Welcome to the Bookstore</h1>
        <p>Discover your next great read and explore our collection of insightful literature.</p>
        <a href="login.jsp" class="button">Browse Books</a>
    </div>

    <div class="content">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9IDedXDPGVi2s7la2Lv5MFURHLMy49fbUgA&s" alt="Book Display">
        <h2>Why Reading is Important</h2>
        <p>Reading books provides numerous benefits, including enhancing cognitive skills, improving concentration, and offering a deeper understanding of the world. It fosters creativity, empathy, and critical thinking, making it an essential activity for personal growth and lifelong learning. Dive into our collection and enrich your life with the joy of reading.</p>
        
        <div class="graph-container">
            <h2>Bookstore Statistics</h2>
            <img src="https://engnovatewebsitestorage.blob.core.windows.net/ielts-writing-task-1-images/a769f60c89326f39" alt="Bookstore Statistics Graph">
            <p>Our collection is diverse, with Fiction being the most popular category, followed by Non-Fiction and Sci-Fi. Explore these categories to find the books that interest you the most!</p>
        </div>
    </div>

    <footer>
        <div class="footer-content">
            <h2>About Bookworm's Haven</h2>
            <p>At Bookworm's Haven, we pride ourselves on curating an exceptional collection of books across various genres. Our mission is to connect readers with literature that inspires, informs, and entertains. From the latest bestsellers to classic masterpieces, we have something for every book lover.</p>
        </div>
    </footer>
</body>
</html>
