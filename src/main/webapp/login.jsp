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
            <div class="col-md-6">
                <img src="https://media.istockphoto.com/id/497347644/photo/hand-pressing-register-now.webp?b=1&s=170667a&w=0&k=20&c=ZV58v5dckr5lEbp-D2ke7PxpkMiR-G6x_MvgBTm-2Hs=">
            </div>
           
            <div class="col-md-6 d-flex justify-content-center">
                <div style="width: 100%;padding-left: 10rem;">
                    <h2 class="text-center">Login</h2>
                    <form action="LoginServlet" method="post">
                        <div class="form-group">
                            <label for="username">Email:</label>
                            <input type="text" class="form-control" id="username" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password:</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block my-3">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"></script>
</body>
</html>
