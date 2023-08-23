<%@page import="com.quizapp.dbConnetion"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <a class="navbar-brand" href="#">Admin Dashboard</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="addjob.jsp">Add Job</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewjobs.jsp">View Jobs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </nav>
     <div class="container mt-5">
        <div class="row">
            <div class="col">
                <h2>View Jobs</h2>
                <table class="table">
                    <thead>
                        <tr >
                            <th>Job ID</th>
                            <th>Job Title</th>
                            <th>Skills Required</th>
                            <th>Experience Required</th>
                            <th>Salary</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
    <%
            try {
            	dbConnetion db=new dbConnetion();
            	db.getCon();
            	ResultSet  rs=db.getAllJobs();
          
            	while(rs.next()){
            	 %>
          	   <tr>
          	   
          	   
          	   

          	   <td ><%= rs.getInt("id") %></td>
					<td><%= rs.getString("jobTitle") %></td>
					
					<td ><%= rs.getString("skillsRequired") %></td>
					<td ><%= rs.getInt("experienceRequired") %></td>	
					<td ><%= rs.getInt("salary") %></td>	
					<td>
				    <div class="btn-group" role="group">
				        <a class="btn btn-primary" href="editjob.jsp?id=<%= rs.getInt("id") %>">Edit</a>
				        <a class="btn btn-danger" href="deletejob.jsp?id=<%= rs.getInt("id") %>">Delete</a>
				    </div>
					</td>


          	   </tr>
            <% }
          
                }catch(Exception e){
                	e.printStackTrace();
                }
            
            
               
            %>



                    </tbody>
                </table>
            </div>
        </div>
    </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
