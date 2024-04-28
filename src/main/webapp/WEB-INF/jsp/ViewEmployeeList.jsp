<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<head>
    <meta charset="ISO-8859-1">
    <title>View ToDo Item List</title>

    <link rel="stylesheet"
        	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
        <script
        	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script
        	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

    <style>
        a{
            color: white;
        }
        a:hover {
            color: white;
            text-decoration: none;
        }
    </style>

</head>
<body>

    <div class="container">

        <h1 class="p-3"> Employee List</h1>

        <form:form>

            <table class="table table-bordered">
            	<tr>
            		<th>E_Id</th>
            		<th>E_Name</th>
            		<th>E_Mail</th>
            		<th>E_Phone</th>
            		<th>E_Salery</th>
            		<th>E_Manager</th>
            		<th>Stetus</th>
            		<th>Mark Completed</th>
            		<th>Edit</th>
            		<th>Delete</th>
            	</tr>

            	<c:forEach var="employee" items="${list}">
                    <tr>
                		<td>${employee.eId}</td>
                		<td>${employee.eName}</td>
                		<td>${employee.eMail}</td>
                		<td>${employee.ePhone}</td>
                		<td>${employee.eSalary}</td>
                		<td>${employee.eManager}</td>
                		<td>${employee.eStetus}</td>
                		<td><button type="button" class="btn btn-success">
                		    <a href="/updateEmployeeStetus/${employee.eId}">Mark Complete</a>
                		</button></td>
                		<td><button type="button" class="btn btn-primary">
                		    <a href="/editEmployee/${employee.eId}">Edit</a>
                		</button></td>
                		<td><button type="button" class="btn btn-danger">
                			<a href="/deleteEmployee/${employee.eId}">Delete</a>
                		</button></td>
                	</tr>

            	</c:forEach>

            </table>

        </form:form>

        <button type="button" class="btn btn-primary btn-block">
        	<a href="/addEmployee">Add New Employee</a>
        </button>

    </div>

    <script th:inline="javascript">
                window.onload = function() {

                    var msg = "${message}";
                    
                    if (msg == "Save Success") {
        				Command: toastr["success"]("Employee Added Successfully!!")
        			} else if (msg == "Delete Success") {
        				Command: toastr["success"]("Employee Deleted Successfully!!")
        			} else if (msg == "Delete Failure") {
        			    Command: toastr["error"]("Some error occurred, couldn't delete item")
        			} else if (msg == "Edit Success") {
        				Command: toastr["success"]("Employee Updated Successfully!!")
        			}

        			toastr.options = {
                          "closeButton": true,
                          "debug": false,
                          "newestOnTop": false,
                          "progressBar": true,
                          "positionClass": "toast-top-right",
                          "preventDuplicates": false,
                          "showDuration": "300",
                          "hideDuration": "1000",
                          "timeOut": "5000",
                          "extendedTimeOut": "1000",
                          "showEasing": "swing",
                          "hideEasing": "linear",
                          "showMethod": "fadeIn",
                          "hideMethod": "fadeOut"
                        }
        	    }
            </script>

</body>

</html>