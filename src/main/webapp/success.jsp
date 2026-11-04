<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submission Successful</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #11998e 0%, #38ef7d 100%);
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
            max-width: 520px;
            padding: 35px;
        }

        .success-badge {
            width: 60px;
            height: 60px;
            background-color: #e8f8f0;
            color: #28a745;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 32px;
            margin: 0 auto 15px auto;
        }

        h2 {
            text-align: center;
            color: #2d3748;
            margin-bottom: 8px;
        }

        p.subtitle {
            text-align: center;
            color: #718096;
            font-size: 14px;
            margin-bottom: 25px;
        }

        .console-notice {
            background: #2d3748;
            color: #68d391;
            padding: 12px 16px;
            border-radius: 8px;
            font-family: 'Courier New', Courier, monospace;
            font-size: 13px;
            margin-bottom: 20px;
            text-align: center;
        }

        .details-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 25px;
        }

        .details-table td {
            padding: 10px 12px;
            border-bottom: 1px solid #edf2f7;
            font-size: 14px;
        }

        .details-table td.label {
            font-weight: 600;
            color: #4a5568;
            width: 35%;
        }

        .details-table td.value {
            color: #2d3748;
            word-break: break-word;
        }

        .btn-back {
            display: block;
            text-align: center;
            background-color: #11998e;
            color: white;
            text-decoration: none;
            padding: 12px;
            border-radius: 8px;
            font-weight: 600;
            transition: background-color 0.2s;
        }

        .btn-back:hover {
            background-color: #0e8076;
        }
    </style>
</head>
<body>

    <div class="card">
        <div class="success-badge">✓</div>
        <h2>Data Received!</h2>
        <p class="subtitle">The servlet has processed your submission.</p>

        <div class="console-notice">
            🖥️ Check your Server Console / Terminal — data has been printed!
        </div>

        <table class="details-table">
            <tr>
                <td class="label">Submission Time:</td>
                <td class="value">${timestamp}</td>
            </tr>
            <tr>
                <td class="label">Full Name:</td>
                <td class="value">${fullName}</td>
            </tr>
            <tr>
                <td class="label">Email:</td>
                <td class="value">${email}</td>
            </tr>
            <tr>
                <td class="label">Phone:</td>
                <td class="value">${not empty phone ? phone : 'N/A'}</td>
            </tr>
            <tr>
                <td class="label">Gender:</td>
                <td class="value">${gender}</td>
            </tr>
            <tr>
                <td class="label">Course:</td>
                <td class="value">${course}</td>
            </tr>
            <tr>
                <td class="label">Message:</td>
                <td class="value">${not empty message ? message : 'None'}</td>
            </tr>
        </table>

        <a href="index.jsp" class="btn-back">← Back to Form</a>
    </div>

</body>
</html>
