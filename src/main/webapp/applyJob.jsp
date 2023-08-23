<%@page import="com.quizapp.dbConnetion"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <a class="navbar-brand" href="#">User Dashboard</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="userDashboard.jsp">View Jobs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </nav>
    
 <div class="container mt-5">
        <div class="row">
            <div class="col">
                <h2>Apply for Job: <%= request.getParameter("jobTitle") %></h2>
                ${fullName}
                
                 <form action="SubmitApplicationServlet" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="jobId" value="<%= request.getParameter("jobId") %>">
                    <div class="form-group">
                        <label for="jobTitle">Job Title:</label>
                        <input type="text" class="form-control" id="jobTitle" name="jobTitle" value="<%= request.getParameter("jobTitle") %>" readonly>
                    </div>
                    <div class="form-group">
                        <label for="name">Your Name:</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Your Email:</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="resume">Upload Resume:</label>
                        <input type="file" class="form-control" id="resume" name="resume" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit Application</button>
                </form>
            </div>
        </div>
    </div>

    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
