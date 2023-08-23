package com.quizapp;

import java.io.IOException;
import java.math.BigDecimal;

import javax.swing.JOptionPane;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AddJobServlet")
public class AddJobServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String jobTitle = request.getParameter("jobTitle");
        String jobDescription = request.getParameter("jobDescription");
        String skillsRequired = request.getParameter("skillsRequired");
        int experienceRequired = Integer.parseInt(request.getParameter("experienceRequired"));
        BigDecimal salary = new BigDecimal(request.getParameter("salary"));

        Job job = new Job(jobTitle, jobDescription, skillsRequired, experienceRequired, salary);

        dbConnetion db = new dbConnetion();
        String message = db.addJob(job);
        if(message!=null) {
JOptionPane.showMessageDialog(null, message);
        response.sendRedirect("addjob.jsp");
        }
    }
}
