<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<head>
    <meta charset="ISO-8859-1">
    <title>Edit Item</title>

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

</head>
<body>

    <div class="container">

        <h1 class="p-3"> Edit Employee </h1>

        <form:form action="/editSaveEmployee" method="post" modelAttribute="employee">
			<form:input path="eId" type="hidden"/>
            <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="title">Name</label>
            		<div class="col-md-6">
            		    <form:input type="text" path="eName" id="title"
            		        class="form-control input-sm" required="required" />
            		</div>
            	</div>
            </div>
               
             <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="title">Email</label>
            		<div class="col-md-6">
            		    <form:input type="text" path="eMail" id="title"
            		        class="form-control input-sm" required="required" />
            		</div>
            	</div>
            </div>
            
             <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="title">Phone</label>
            		<div class="col-md-6">
            		    <form:input type="text" path="ePhone" id="title"
            		        class="form-control input-sm" required="required" />
            		</div>
            	</div>
            </div>
            
             <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="title">Salery</label>
            		<div class="col-md-6">
            		    <form:input type="text" path="eSalary" id="title"
            		        class="form-control input-sm" required="required" />
            		</div>
            	</div>
            </div>
            
             <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="title">Manager</label>
            		<div class="col-md-6">
            		    <form:input type="text" path="eManager" id="title"
            		        class="form-control input-sm" required="required" />
            		</div>
            	</div>
            </div>
            
            <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="status">Status</label>
            		<div class="col-md-6">
            			<form:input type="text" path="eStetus" id="status"
            				class="form-control input-sm" value="Incomplete" />
            		</div>
            	</div>
            </div>

            <div class="row p-2">
            	<div class="col-md-2">
            		<button type="submit" value="Register" class="btn btn-success">Save</button>
            	</div>
            </div>

        </form:form>

    </div>

    <script th:inline="javascript">
                window.onload = function() {

                    var msg = "${message}";
                    console.log(msg);
                    if (msg == "Edit Failure") {
        				Command: toastr["error"]("Something went wrong with the edit.")
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