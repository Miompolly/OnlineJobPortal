<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Take Quiz - Online Quiz App</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <style type="text/css">
    .quiz-question {
    margin-bottom: 20px;
}

.answer-options {
    display: flex;
    gap: 10px;
}
    </style>
</head>
<body>
    <!-- Navbar with custom background color -->
    <nav class="navbar navbar-expand-lg navbar-light bg-primary">
        <div class="container justify-content-between">
            <a class="navbar-brand" href="#">Online Quiz App</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav" style="margin-left: 40rem;">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="userDashboard.jsp">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Take Quiz</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5 w-50">
        <h2>Take Quiz</h2>
        <p>Answer the following questions:</p>
    
      <form action="QuizSubmissionServlet" method="post">
    <div class="form-group my-3" style="display: flex; flex-direction: column;">
        <label for="question1">Question 1: </label>
        <span>What is the capital of France?</span><hr>
        <div>
     <input type="radio" name="question1" value="Paris"> Paris
     <br>
     <input type="radio" name="question1" value="London"> London
      <br>
     <input type="radio" name="question1" value="Berlin"> Berlin
      <br>
    </div>
    </div>
    <div class="form-group my-3">
        <label for="question2">Question 2: </label>
        <span>What is 2 + 2?</span><hr>
        <input type="radio" name="question2" value="3"> 3
         <br>
        <input type="radio" name="question2" value="4"> 4
         <br>
        <input type="radio" name="question2" value="5"> 5
    </div>
    <!-- Add more questions as needed -->
    <button type="submit" class="btn btn-primary">Submit Quiz</button>
</form>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"></script>
</body>
</html>
