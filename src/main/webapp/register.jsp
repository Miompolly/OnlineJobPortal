<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Online job App</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <!-- Using bg-primary for a blue background color -->
    <nav class="navbar  navbar-expand-sm bg-dark navbar-dark">
        <div class="container justify-content-between">
            <a class="navbar-brand" href="#">Online Job Portal App</a>
            <ul class="navbar-nav ml-auto">
          <li class="nav-item">
                    <a class="nav-link" href="register.jsp">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Login</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-5">
        <div class="row">
            <!-- Image Column -->
            <div class="col-md-6 ">
                <img src="https://img.freepik.com/premium-vector/register-now-speech-bubble-banner-with-register-now-text-glassmorphism-style-business-marketing-advertising-vector-isolated-background-eps-10_399089-3544.jpg">
            </div>
            <!-- Form Column -->
            <div class="col-md-6 d-flex justify-content-center">
                <div style="width: 100%;padding-left: 10rem;">
                    <h2 class="text-center">Sign Up</h2>
                    <form action="RegistrationServlet" method="post">
                        <div class="form-group">
                            <label for="fullName">Full Name:</label>
                            <input type="text" class="form-control" id="fullName" name="fullName" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password:</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block my-3">Sign Up</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"></script>
</body>
</html>
