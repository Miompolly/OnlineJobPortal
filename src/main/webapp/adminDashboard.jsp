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
    
    <!-- Dashboard content -->
    <div class="container mt-5">
    <div class="container mt-5">
        <div class="row">
            <div class="col">
                <h2>Admin Agreement for Online Job Portal</h2>
                <ol>
                    <li>
                        <h5>Acceptance of Terms</h5>
                        <p>By accessing and using the administrative features of the Online Job Portal, the Admin User agrees to comply with and be bound by the terms and conditions of this Agreement. If the Admin User does not agree with these terms, they must not use the administrative features of the Online Job Portal.</p>
                    </li>
                    <li>
                        <h5>Admin User Account</h5>
                        <p>The Admin User shall be responsible for maintaining the confidentiality of their account login credentials and shall not share their account access with third parties. The Admin User agrees to immediately notify the Company of any unauthorized use or breach of security of their account.</p>
                    </li>
                    <li>
                        <h5>Authorized Use</h5>
                        <p>The Admin User is granted access to the administrative features of the Online Job Portal for the purpose of managing job listings, user accounts, and other related administrative tasks. The Admin User shall not use the administrative features for any illegal, unauthorized, or prohibited purposes.</p>
                    </li>
                    <li>
                        <h5>Responsibilities</h5>
                        <ol>
                            <li>
                                <p>The Admin User shall ensure that the job listings and information provided on the Online Job Portal are accurate, up-to-date, and comply with all applicable laws and regulations.</p>
                            </li>
                            <li>
                                <p>The Admin User shall exercise proper moderation and management of user accounts, job postings, and other content to maintain a positive and safe environment for users of the Online Job Portal.</p>
                            </li>
                        </ol>
                    </li>
                </ol>
            </div>
        </div>
    </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
