<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP &amp; Servlet User Registration Form</title>
        <style>
            * {
                box-sizing: border-box;
                margin: 0;
                padding: 0;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

            body {
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
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
                max-width: 520px;
                padding: 35px;
            }

            .header {
                text-align: center;
                margin-bottom: 25px;
            }

            .header h2 {
                color: #333;
                font-size: 26px;
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
            input[type="email"],
            input[type="tel"],
            select,
            textarea {
                width: 100%;
                padding: 11px 14px;
                border: 1.5px solid #ddd;
                border-radius: 8px;
                font-size: 14px;
                outline: none;
                transition: border-color 0.2s, box-shadow 0.2s;
            }

            input[type="text"]:focus,
            input[type="email"]:focus,
            input[type="tel"]:focus,
            select:focus,
            textarea:focus {
                border-color: #667eea;
                box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.2);
            }

            .radio-group {
                display: flex;
                gap: 20px;
                margin-top: 6px;
            }

            .radio-label {
                display: flex;
                align-items: center;
                gap: 6px;
                font-weight: normal;
                cursor: pointer;
                color: #555;
            }

            textarea {
                resize: vertical;
                min-height: 85px;
            }

            .btn-group {
                display: flex;
                gap: 12px;
                margin-top: 25px;
            }

            button {
                flex: 1;
                padding: 12px;
                font-size: 15px;
                font-weight: 600;
                border-radius: 8px;
                border: none;
                cursor: pointer;
                transition: all 0.2s ease;
            }

            .btn-submit {
                background-color: #667eea;
                color: white;
            }

            .btn-submit:hover {
                background-color: #5568d3;
                transform: translateY(-1px);
            }

            .btn-reset {
                background-color: #e2e8f0;
                color: #4a5568;
            }

            .btn-reset:hover {
                background-color: #cbd5e1;
            }

            .info-box {
                margin-top: 20px;
                padding: 12px 15px;
                background-color: #f0f4ff;
                border-left: 4px solid #667eea;
                border-radius: 4px;
                font-size: 13px;
                color: #4a5568;
            }
        </style>
    </head>

    <body>

        <div class="container">
            <div style="text-align: center; margin-bottom: 15px;">
                <a href="feedback.jsp"
                    style="display: inline-block; background: #fff3cd; color: #856404; padding: 6px 14px; border-radius: 20px; font-size: 13px; text-decoration: none; font-weight: 600; border: 1px solid #ffeeba;">✨
                    Try Form #2: Feedback Form &rarr;</a>
            </div>
            <div class="header">
                <h2>welcome tiago</h2>
                <p>Fill out the form below. Submitted data will be printed to the servlet console.</p>
            </div>

            <form action="submitForm" method="POST">
                <div class="form-group">
                    <label for="fullName">Full Name *</label>
                    <input type="text" id="fullName" name="fullName" placeholder="e.g. John Doe" required>
                </div>

                <div class="form-group">
                    <label for="email">Email Address *</label>
                    <input type="email" id="email" name="email" placeholder="e.g. john@example.com" required>
                </div>

                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone" placeholder="e.g. +1 234 567 8900">
                </div>

                <div class="form-group">
                    <label>Gender</label>
                    <div class="radio-group">
                        <label class="radio-label">
                            <input type="radio" name="gender" value="Male" checked> Male
                        </label>
                        <label class="radio-label">
                            <input type="radio" name="gender" value="Female"> Female
                        </label>
                        <label class="radio-label">
                            <input type="radio" name="gender" value="Other"> Other
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <label for="course">Interested Course</label>
                    <select id="course" name="course">
                        <option value="Java Full Stack Development">Java Full Stack Development</option>
                        <option value="JSP &amp; Servlet Deep Dive">JSP &amp; Servlet Deep Dive</option>
                        <option value="Spring Boot &amp; Microservices">Spring Boot &amp; Microservices</option>
                        <option value="Database Engineering (SQL/NoSQL)">Database Engineering (SQL/NoSQL)</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="message">Message / Notes</label>
                    <textarea id="message" name="message" placeholder="Enter any questions or comments..."></textarea>
                </div>

                <div class="btn-group">
                    <button type="submit" class="btn-submit">Submit to Servlet</button>
                    <button type="reset" class="btn-reset">Reset</button>
                </div>
            </form>

            <div class="info-box">
                💡 <strong>Note:</strong> When you click submit, <code>FormServlet.java</code> will capture these fields
                and print them directly to the terminal/IDE console.
            </div>
        </div>

    </body>

    </html>