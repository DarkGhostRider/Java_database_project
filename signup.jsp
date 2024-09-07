<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup - Bookworm's Haven</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            background: url('https://www.usnews.com/object/image/00000145-dde1-d75e-a3d7-dde95f630000/140508-books-editorial.jpg?update-time=1563372901397&size=responsive640') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            padding: 0 20px;
            box-sizing: border-box;
        }
        .info-section {
            width: 25%;
            padding: 20px;
            box-sizing: border-box;
            color: white;
            text-shadow: 1px 1px 3px rgba(0,0,0,0.7);
            background: rgba(0, 0, 0, 0.7);
            border-radius: 10px;
            margin: 0 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
            transition: transform 0.3s ease;
        }
        .info-section:hover {
            transform: scale(1.03);
        }
        .info-section h2 {
            margin-top: 0;
            font-size: 1.5em;
        }
        .signup-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            max-width: 400px;
            width: 100%;
            text-align: center;
            position: relative;
            margin: 0 10px;
        }
        .signup-container h1 {
            color: #ff6f61;
            margin-bottom: 20px;
            font-size: 2.5em;
            font-weight: bold;
        }
        .signup-container label {
            display: block;
            margin: 10px 0 5px;
            font-size: 16px;
            color: #333;
        }
        .signup-container input[type="text"],
        .signup-container input[type="email"],
        .signup-container input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 5px 0 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }
        .signup-container input[type="submit"] {
            background-color: #ff6f61;
            color: white;
            border: none;
            padding: 15px;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .signup-container input[type="submit"]:hover {
            background-color: #ff4c4c;
            transform: scale(1.05);
        }
        .signup-container a {
            display: inline-block;
            margin-top: 15px;
            color: #ff6f61;
            text-decoration: none;
            font-size: 16px;
            transition: color 0.3s ease;
        }
        .signup-container a:hover {
            color: #ff4c4c;
            text-decoration: underline;
        }
        .signup-container::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.4);
            border-radius: 10px;
            z-index: -1;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="info-section">
            <h2>About Bookworm's Haven</h2>
            <p>Discover a world of books at Bookworm's Haven. We offer a vast collection of literary treasures, from the latest bestsellers to timeless classics. Join our community of book lovers and find your next great read today!</p>
        </div>
        
        <div class="signup-container">
            <h1>Bookworm's Haven</h1>
            <form action="Signup" method="post">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required><br>
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required><br>
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required><br>
                <input type="submit" value="Sign Up">
            </form>
            <a href="bookstote_index.jsp">Back to Home</a>
        </div>

        <div class="info-section">
            <h2>Why Join Us?</h2>
            <p>By signing up, you’ll receive personalized recommendations, access to exclusive events, and special discounts. Join our family and immerse yourself in the joy of reading with Bookworm's Haven!</p>
        </div>
    </div>
</body>
</html>
