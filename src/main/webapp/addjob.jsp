<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
            <div class="col-md-8 offset-md-2">
                <h2>Add Job</h2>
                <form action="AddJobServlet" method="post">
                    <div class="form-group">
                        <label for="jobTitle">Job Title:</label>
                        <input type="text" class="form-control" id="jobTitle" name="jobTitle" required>
                    </div>
                    <div class="form-group">
                        <label for="jobDescription">Job Description:</label>
                        <textarea class="form-control" id="jobDescription" name="jobDescription" rows="4" required></textarea>
                    </div>
                    <div class="form-group">
                        <label for="skillsRequired">Skills Required:</label>
                        <input type="text" class="form-control" id="skillsRequired" name="skillsRequired" required>
                    </div>
                    <div class="form-group">
                        <label for="experienceRequired">Experience Required:</label>
                        <input type="number" class="form-control" id="experienceRequired" name="experienceRequired" min="0" required>
                    </div>
                    <div class="form-group">
                        <label for="salary">Salary:</label>
                        <input type="number" class="form-control" id="salary" name="salary" min="0" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
