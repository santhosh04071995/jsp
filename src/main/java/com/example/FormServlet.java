package com.example;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/submitForm")
public class FormServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Redirect GET requests back to the form
        response.sendRedirect(request.getContextPath() + "/index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Ensure proper encoding for incoming request data
        request.setCharacterEncoding("UTF-8");

        // Retrieve form fields sent by the user
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String gender = request.getParameter("gender");
        String course = request.getParameter("course");
        String message = request.getParameter("message");

        // Format current timestamp
        String timestamp = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));

        // ==========================================
        // CONSOLE OUTPUT: Display received data
        // ==========================================
        System.out.println("==================================================");
        System.out.println(">>> [SERVLET CONSOLE] Form Submission Received <<<");
        System.out.println("Timestamp : " + timestamp);
        System.out.println("Full Name : " + fullName);
        System.out.println("Email     : " + email);
        System.out.println("Phone     : " + phone);
        System.out.println("Gender    : " + gender);
        System.out.println("Course    : " + course);
        System.out.println("Message   : " + message);
        System.out.println("Client IP : " + request.getRemoteAddr());
        System.out.println("==================================================");

        // Store attributes in the request object so JSP can display them
        request.setAttribute("fullName", fullName);
        request.setAttribute("email", email);
        request.setAttribute("phone", phone);
        request.setAttribute("gender", gender);
        request.setAttribute("course", course);
        request.setAttribute("message", message);
        request.setAttribute("timestamp", timestamp);

        // Forward the request to success.jsp to show confirmation to the user
        request.getRequestDispatcher("/success.jsp").forward(request, response);
    }
}
