<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Error - Bookworm's Haven</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Gutenberg_Bible%2C_Lenox_Copy%2C_New_York_Public_Library%2C_2009._Pic_01.jpg/450px-Gutenberg_Bible%2C_Lenox_Copy%2C_New_York_Public_Library%2C_2009._Pic_01.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .error-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            text-align: center;
        }
        .error-container h1 {
            color: #e53e3e;
            margin-bottom: 20px;
            font-size: 2em;
        }
        .error-container p {
            color: #e53e3e;
            margin-bottom: 20px;
            font-size: 1.2em;
        }
        .error-container a {
            color: #3182ce;
            text-decoration: none;
            font-weight: bold;
            font-size: 1.1em;
        }
        .error-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h1>Login Error</h1>
        <p>Username or password is incorrect. Please try again.</p>
        <a href="login.jsp">Back to Login</a>
    </div>
</body>
</html>
