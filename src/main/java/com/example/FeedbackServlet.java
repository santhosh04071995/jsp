package com.example;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/submitFeedback")
public class FeedbackServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Redirect direct GET access back to the feedback form
        response.sendRedirect(request.getContextPath() + "/feedback.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");

        // 1. Retrieve the fields sent from feedback.jsp
        String reviewerName = request.getParameter("reviewerName");
        String rating = request.getParameter("rating");
        String comments = request.getParameter("comments");

        String timestamp = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));

        // 2. CONSOLE OUTPUT: Print to terminal console
        System.out.println("==================================================");
        System.out.println(">>> [FEEDBACK CONSOLE] Feedback Received! <<<");
        System.out.println("Time     : " + timestamp);
        System.out.println("Reviewer : " + reviewerName);
        System.out.println("Rating   : " + rating + " Stars");
        System.out.println("Comments : " + comments);
        System.out.println("==================================================");

        // 3. Attach data to request so feedbackSuccess.jsp can read it via EL
        request.setAttribute("reviewerName", reviewerName);
        request.setAttribute("rating", rating);
        request.setAttribute("comments", comments);
        request.setAttribute("timestamp", timestamp);

        // 4. Forward to the result page
        request.getRequestDispatcher("/feedbackSuccess.jsp").forward(request, response);
    }
}

