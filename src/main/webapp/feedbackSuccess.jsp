<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Received!</title>
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

        .card {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 480px;
            padding: 35px;
            text-align: center;
        }

        .star-badge {
            font-size: 48px;
            margin-bottom: 10px;
        }

        h2 {
            color: #2d3748;
            margin-bottom: 8px;
        }

        p.subtitle {
            color: #718096;
            font-size: 14px;
            margin-bottom: 25px;
        }

        .console-banner {
            background: #2d3748;
            color: #fda085;
            padding: 10px 14px;
            border-radius: 8px;
            font-family: 'Courier New', Courier, monospace;
            font-size: 12px;
            margin-bottom: 20px;
        }

        .details-box {
            text-align: left;
            background: #fdfaf6;
            border: 1px solid #fed7aa;
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 25px;
            font-size: 14px;
        }

        .details-box p {
            margin-bottom: 8px;
            color: #4a5568;
        }

        .details-box strong {
            color: #2d3748;
        }

        .btn-group {
            display: flex;
            gap: 10px;
        }

        .btn {
            flex: 1;
            padding: 12px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: 600;
            font-size: 14px;
            text-align: center;
        }

        .btn-primary {
            background: #fda085;
            color: white;
        }

        .btn-secondary {
            background: #edf2f7;
            color: #4a5568;
        }
    </style>
</head>
<body>

    <div class="card">
        <div class="star-badge">🌟</div>
        <h2>Thank You, ${reviewerName}!</h2>
        <p class="subtitle">Processed by <code>FeedbackServlet.java</code></p>

        <div class="console-banner">
            🖥️ Printed to terminal console via FeedbackServlet!
        </div>

        <div class="details-box">
            <p><strong>Submitted At:</strong> ${timestamp}</p>
            <p><strong>Rating Given:</strong> ${rating} / 5 Stars</p>
            <p><strong>Comments:</strong> ${not empty comments ? comments : 'No comments provided.'}</p>
        </div>

        <div class="btn-group">
            <a href="feedback.jsp" class="btn btn-secondary">Submit Another</a>
            <a href="index.jsp" class="btn btn-primary">Form #1 (Registration)</a>
        </div>
    </div>

</body>
</html>

