<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>404 - Page Not Found</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
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
            padding: 40px;
            text-align: center;
        }

        .error-code {
            font-size: 72px;
            font-weight: 800;
            color: #f5576c;
            line-height: 1;
            margin-bottom: 10px;
        }

        h2 {
            color: #2d3748;
            font-size: 24px;
            margin-bottom: 12px;
        }

        p {
            color: #718096;
            font-size: 15px;
            margin-bottom: 30px;
            line-height: 1.5;
        }

        .btn-home {
            display: inline-block;
            background-color: #f5576c;
            color: white;
            text-decoration: none;
            padding: 12px 28px;
            border-radius: 8px;
            font-weight: 600;
            transition: background-color 0.2s, transform 0.2s;
        }

        .btn-home:hover {
            background-color: #e0455a;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>

    <div class="card">
        <div class="error-code">404</div>
        <h2>Page Not Found</h2>
        <p>The page you requested does not exist on this server. It might have been moved or removed.</p>
        <a href="${pageContext.request.contextPath}/" class="btn-home">← Back to Homepage</a>
    </div>

</body>
</html>

