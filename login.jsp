<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Bookworm's Haven</title>
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
        }
        .login-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            max-width: 400px;
            width: 100%;
            text-align: center;
            position: relative;
        }
        .login-container h1 {
            color: #ff6f61;
            margin-bottom: 20px;
            font-size: 2.5em;
            font-weight: bold;
        }
        .login-container label {
            display: block;
            margin: 10px 0 5px;
            font-size: 16px;
            color: #333;
        }
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 5px 0 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }
        .login-container input[type="submit"] {
            background-color: #ff6f61;
            color: white;
            border: none;
            padding: 15px;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .login-container input[type="submit"]:hover {
            background-color: #ff4c4c;
            transform: scale(1.05);
        }
        .login-container a {
            display: inline-block;
            margin-top: 15px;
            color: #ff6f61;
            text-decoration: none;
            font-size: 16px;
            transition: color 0.3s ease;
        }
        .login-container a:hover {
            color: #ff4c4c;
            text-decoration: underline;
        }
        .show-password-container {
            position: relative;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .show-password-link {
            cursor: pointer;
            color: #ff6f61;
            text-decoration: underline;
            font-size: 14px;
            margin-left: 10px;
        }
        .show-password-link:hover {
            color: #ff4c4c;
        }
        .login-container::before {
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
    <div class="login-container">
        <h1>Bookworm's Haven</h1>
        <form action="Login_Validation" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required><br>
            <label for="password">Password</label>
            <div class="show-password-container">
                <input type="password" id="password" name="password" required>
                <span class="show-password-link" onclick="togglePassword()">Show</span>
            </div><br>
            <input type="submit" value="Login">
        </form>
        <a href="bookstore_index.jsp">Back to Home</a>
    </div>

    <script>
        function togglePassword() {
            var passwordField = document.getElementById('password');
            var showPasswordLink = document.querySelector('.show-password-link');

            if (passwordField.type === 'password') {
                passwordField.type = 'text';
                showPasswordLink.textContent = 'Hide';
            } else {
                passwordField.type = 'password';
                showPasswordLink.textContent = 'Show';
            }
        }
    </script>
</body>
</html>
