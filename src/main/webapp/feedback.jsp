<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form 2 - User Feedback</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #f6d365 0%, #fda085 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .container {
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 480px;
            padding: 35px;
        }

        .header {
            text-align: center;
            margin-bottom: 25px;
        }

        .badge {
            display: inline-block;
            background: #fff3cd;
            color: #856404;
            padding: 4px 12px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: 700;
            margin-bottom: 10px;
            text-transform: uppercase;
        }

        .header h2 {
            color: #333;
            font-size: 24px;
            font-weight: 700;
        }

        .header p {
            color: #666;
            font-size: 14px;
            margin-top: 6px;
        }

        .form-group {
            margin-bottom: 18px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            color: #444;
            font-size: 14px;
            font-weight: 600;
        }

        input[type="text"],
        select,
        textarea {
            width: 100%;
            padding: 11px 14px;
            border: 1.5px solid #ddd;
            border-radius: 8px;
            font-size: 14px;
            outline: none;
            transition: border-color 0.2s;
        }

        input[type="text"]:focus,
        select:focus,
        textarea:focus {
            border-color: #fda085;
            box-shadow: 0 0 0 3px rgba(253, 160, 133, 0.25);
        }

        textarea {
            resize: vertical;
            min-height: 85px;
        }

        .btn-submit {
            width: 100%;
            padding: 12px;
            background: linear-gradient(135deg, #f6d365 0%, #fda085 100%);
            color: #333;
            font-weight: 700;
            border: none;
            border-radius: 8px;
            font-size: 15px;
            cursor: pointer;
            transition: opacity 0.2s, transform 0.2s;
            margin-top: 10px;
        }

        .btn-submit:hover {
            opacity: 0.95;
            transform: translateY(-1px);
        }

        .nav-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #555;
            text-decoration: none;
        }

        .nav-link:hover {
            color: #fda085;
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="header">
            <span class="badge">Form #2 Demo</span>
            <h2>Send Quick Feedback</h2>
            <p>This form routes to <code>FeedbackServlet.java</code> via <code>/submitFeedback</code></p>
        </div>

        <!-- Triggers HTTP POST to /submitFeedback -->
        <form action="submitFeedback" method="POST">
            <div class="form-group">
                <label for="reviewerName">Your Name *</label>
                <input type="text" id="reviewerName" name="reviewerName" placeholder="e.g. Sarah Connor" required>
            </div>

            <div class="form-group">
                <label for="rating">Rating</label>
                <select id="rating" name="rating">
                    <option value="5">⭐⭐⭐⭐⭐ (5 - Outstanding)</option>
                    <option value="4">⭐⭐⭐⭐ (4 - Very Good)</option>
                    <option value="3">⭐⭐⭐ (3 - Average)</option>
                    <option value="2">⭐⭐ (2 - Poor)</option>
                    <option value="1">⭐ (1 - Terrible)</option>
                </select>
            </div>

            <div class="form-group">
                <label for="comments">Comments</label>
                <textarea id="comments" name="comments" placeholder="Write your thoughts here..."></textarea>
            </div>

            <button type="submit" class="btn-submit">Submit Feedback</button>
        </form>

        <a href="index.jsp" class="nav-link">← Switch to Form #1 (Registration)</a>
    </div>

</body>
</html>

