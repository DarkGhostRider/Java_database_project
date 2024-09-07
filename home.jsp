<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome - Bookworm's Haven</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            background: url('https://www.forbes.com/advisor/wp-content/uploads/2022/12/Books.jpeg.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            flex-direction: column;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            width: 80%;
            max-width: 1200px;
            padding: 30px;
            box-sizing: border-box;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
            margin: 20px auto;
            flex-wrap: wrap;
        }
        .nav-links {
            flex: 1;
            margin-right: 30px;
        }
        .nav-links h2 {
            color: #333;
            font-size: 2.5em;
            margin-bottom: 20px;
            font-weight: 700;
            border-bottom: 4px solid #007bff;
            padding-bottom: 10px;
        }
        .nav-links a {
            display: block;
            text-decoration: none;
            color: #007bff;
            font-size: 1.2em;
            margin: 10px 0;
            transition: color 0.3s ease, transform 0.3s ease;
        }
        .nav-links a:hover {
            color: #0056b3;
            transform: translateX(5px);
        }
        .info-section {
            flex: 2;
            padding: 20px;
        }
        .info-section h2 {
            color: #333;
            font-size: 2.5em;
            margin-bottom: 20px;
            font-weight: 700;
        }
        .info-section p {
            color: #666;
            font-size: 1.2em;
            line-height: 1.8;
            margin-bottom: 20px;
        }
        .info-image {
            width: 100%;
            max-width: 800px;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .info-image:hover {
            transform: scale(1.05);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.4);
        }
        footer {
            background-color: rgba(0, 0, 0, 0.8);
            color: #fff;
            text-align: center;
            padding: 20px;
            position: relative;
            bottom: 0;
            width: 100%;
            font-size: 1em;
            box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="nav-links">
            <h2>Explore More</h2>
            <a href="All_Book_List">All Book List</a>
            <a href="Single_Books.jsp">Single Book</a>
            <a href="list_book">List Book</a>
        </div>
        <div class="info-section">
            <h2>Welcome to Bookworm's Haven</h2>
            <p>Discover a world of books with our extensive collection. Whether you’re looking for the latest bestsellers or timeless classics, Bookworm’s Haven offers something for every reader. Dive into our categories to find your next great read.</p>
            <p>We have a special section for health-related books, covering topics from nutrition and fitness to mental well-being and holistic health. Explore titles that provide valuable insights and practical advice for leading a healthier lifestyle. Our collection includes guides, expert reviews, and self-help books that cater to diverse health interests.</p>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7r-JXGExGXeTUgQ_2yExkfgn7dxPaZf1JUQ&s" alt="Book Collection" class="info-image">
        </div>
    </div>
    <footer>
        <p>&copy; 2024 Bookworm's Haven. We are dedicated to providing the best book selection for all book lovers. From educational resources to leisure reads, our goal is to enrich your reading experience.</p>
    </footer>
</body>
</html>
