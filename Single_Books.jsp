<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Search - Bookworm's Haven</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: url('https://npr.brightspotcdn.com/dims4/default/15cd16d/2147483647/strip/true/crop/3147x1770+0+0/resize/1760x990!/format/webp/quality/90/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2Flegacy%2Fimages%2Fnews%2Fnpr%2F2022%2F06%2F1108098735_2098665535.jpg') no-repeat center center fixed;
            background-size: cover;
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
        .overlay {
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 1;
        }
        .over {
            position: relative;
            width: 100%;
            height: 110vh;
            background: rgba(255, 255, 255, 0.7); /* Semi-transparent white background */
        }
        .main-content {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            margin-top: 100px; /* To account for fixed navbar */
            padding: 20px;
            position: relative;
            z-index: 2;
        }
        .info-section {
            flex: 1;
            max-width: 300px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 12px;
            margin: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }
        .info-section h3 {
            color: #2d3748;
            font-size: 1.5em;
            margin-bottom: 15px;
        }
        .info-section p {
            color: #4a5568;
            font-size: 1em;
        }
        .form-container {
            flex: 2;
            max-width: 600px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
        }
        .form-container h2 {
            color: #2d3748;
            font-size: 2em;
            margin-bottom: 20px;
        }
        .form-container input[type="text"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 80%;
            margin-bottom: 10px;
        }
        .form-container input[type="submit"] {
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            background-color: #f56565;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .form-container input[type="submit"]:hover {
            background-color: #e53e3e;
            transform: scale(1.05);
        }
        .image-gallery {
            max-width: 1200px;
            margin: 40px auto;
            text-align: center;
            
        }
        .image-gallery img {
            width: 30%;
            height: auto;
            margin: 10px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        footer {
            background-color: #1a202c;
            color: #fff;
            text-align: center;
            padding: 20px;
            box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.3);
            margin-top: 40px;
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
            text-decoration: none;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }
        .footer-content .button:hover {
            background-color: #e2e8f0;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <h1>Bookworm's Haven</h1>
    </div>
   <div class="over"> 
    <div class="overlay">
        <div class="main-content">
            <div class="info-section">
                <h3>Discover New Reads</h3>
                <p>Explore our vast collection of books, from modern bestsellers to classic literature. Our curated selection is designed to cater to every reader's taste and interest, making it easy to find your next favorite book.</p>
            </div>
            <div class="form-container">
                <h2>Search for a Book</h2>
                <form action="Single" method="get">
                    <input type="text" name="ebn" placeholder="Enter book name">
                    <input type="submit" value="Search">
                </form>
                <br>
                <a href="home.jsp" class="button">Back</a>
            </div>
            <div class="info-section">
                <h3>Bookworm's Haven</h3>
                <p>At Bookworm's Haven, we believe in the power of books to transform lives. Our mission is to foster a love of reading through a diverse range of books and exceptional customer service. Join our community and share in the joy of discovering great reads.</p>
            </div>
        </div>
    </div>
    
	    <div class="image-gallery">
	        <img src="https://cdn.uniacco.com/blog/wp-content/uploads/2021/06/03160616/bookstore-slide-2MCD-superJumbo-min.jpg" alt="Books Collection 1">
	        <img src="https://pbs.twimg.com/media/DcmR_FLXcAEF2Cz.jpg" alt="Books Collection 2">
	        <img src="https://i0.wp.com/www.printmag.com/wp-content/uploads/2022/06/Screen-Shot-2022-06-23-at-2.10.28-PM.png?fit=1568%2C998&quality=80&ssl=1" alt="Books Collection 3">
	    </div>
  </div>  
    <footer>
        <div class="footer-content">
            <h2>About Bookworm's Haven</h2>
            <p>At Bookworm's Haven, we offer a wide variety of books for every type of reader. From the latest bestsellers to timeless classics, our collection is curated to inspire and entertain. We are dedicated to providing an exceptional book-buying experience with personalized recommendations and a user-friendly online platform.</p>
        </div>
    </footer>
</body>
</html>
