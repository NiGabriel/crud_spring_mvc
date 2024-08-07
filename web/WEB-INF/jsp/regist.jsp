<%-- 
    Document   : regist
    Created on : Aug 6, 2024, 10:26:27 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Registering new student</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Student ID</label>
                        <input type="text" name="id" class="form-control"/>
                        <label>Student Full names</label>
                        <input type="text" name="fullnames" class="form-control"/>
                        <label>Student gender</label>
                        <input type="text" name="gender" class="form-control"/>
                        <label>Student age</label>
                        <input type="text" name="age" class="form-control"/>
                        <label>Student department</label>
                        <input type="text" name="department" class="form-control"/>
                        <input type="Submit" value="Submit" class="btn btn-success"/>
                        <a href="index.htm" class="btn btn-primary">BACK TO HOME</a>
                    </form>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    </body>
</html>
