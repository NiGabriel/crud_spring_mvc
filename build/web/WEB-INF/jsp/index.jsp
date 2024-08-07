<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Student list</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <a href="regist.htm" class="btn btn-light">NEW REGISTRATION</a>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>FULL NAMES</th>
                                <th>AGE</th>
                                <th>PHONE</th>
                                <th>DEPARTMENT</th>
                                <th>ACTION</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dat" items="${StudentList}">
                                <tr>
                                    <td>${dat.id}</td>
                                    <td>${dat.fullnames}</td>
                                    <td>${dat.gender}</td>
                                    <td>${dat.age}</td>
                                    <td>${dat.department}</td>

                                    <td>
                                        <a href="edit.htm?id=${dat.id}" class="btn btn-warning">EDIT</a>
                                        <a href="delete.htm?id=${dat.id}" class="btn btn-danger">DELETE</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div> 
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>

