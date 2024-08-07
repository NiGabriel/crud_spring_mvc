<%-- 
    Document   : edit
    Created on : Aug 6, 2024, 10:27:28 PM
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
        <div class="container mt-4 col-lg-6">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <h4>Update Student</h4>
                </div>
                <div class="card-body">
                    <form method="POST" action="edit.htm">
                        <input type="hidden" name="id" class="form-control" value="${EditStud[0].id}"/>
                        <div class="form-group">
                            <label>Student Full Names</label>
                            <input type="text" name="fullnames" class="form-control" value="${EditStud[0].fullnames}"/>
                        </div>
                        <div class="form-group">
                            <label>Student Gender</label>
                            <input type="text" name="gender" class="form-control" value="${EditStud[0].gender}"/>
                        </div>
                        <div class="form-group">
                            <label>Student Age</label>
                            <input type="text" name="age" class="form-control" value="${EditStud[0].age}"/>
                        </div>
                        <div class="form-group">
                            <label>Student Department</label>
                            <input type="text" name="department" class="form-control" value="${EditStud[0].department}"/>
                        </div>
                        <button type="submit" class="btn btn-success">Submit</button>
                        <a href="index.htm" class="btn btn-primary">Back to Home</a>
                    </form>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
