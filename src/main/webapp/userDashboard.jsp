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
                    <a class="nav-link" href="logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </nav>
    
    

<div class="container">

<div class="card-header my-3">All Job Available</div>


<div class="row">
 <%
                        try {
                            dbConnetion db = new dbConnetion();
                            db.getCon();
                            ResultSet rs = db.getAllJobs();

                            while (rs.next()) {
                                int jobId = rs.getInt("id");
                                String jobTitle = rs.getString("jobTitle");
                                String jobDes= rs.getString("jobDescription");
                                String skillsRequired = rs.getString("skillsRequired");
                                int experienceRequired = rs.getInt("experienceRequired");
                                int salary = rs.getInt("salary");
                            %>
<div class="col-md-3 my-3">

<div class="card w-100" style="width: 18rem;">



  <div class="card-body">
  
  
  
    <h6 class="card-title" style="font-weight: bold;"><%= jobTitle %></h6>
    <br>
    
     <h6 class="card-title my-3">Job Description</h6>
     <hr>
  <p class="price"><%= jobDes %></p>
  <br>
  
  <span>Skills: <%= skillsRequired %> </span><br>
  <span>Exp : <%= experienceRequired %> Years</span>
  
  
  <div class="mt-3 d-flex justify-content-between">
<%-- <a href="add-to-cart?id=<%= foodId %>" class="btn btn-dark">Add to Cart</a> --%>

      <a href="applyJob.jsp?jobId=<%= jobId %>&jobTitle=<%= jobTitle %>" class="btn btn-primary">Apply</a>
  
  </div>
 
  </div>
</div>
</div>
<%
    }
} catch (SQLException e) {
    e.printStackTrace();
    System.out.println("no data get it" + e.getMessage());
}
%>
</div>

</div>


    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
