<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register User</title>

<link rel="stylesheet"
 href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
 crossorigin="anonymous">
</head>

</head>
<body style="background-color: #FAEBD7;">
 <div class="container">
 <div style="padding-left:250px;">
  <h2 style="font-weight: bold; color:blue;font-size:70px;">Registration Form</h2>
 </div>
 <hr>
  <div class="row col-md-10 col-md-offset-3" style="padding-left:140px;"> 
   
   <div class="card card-body" style="background-color: #FAEBD7">
   
    <h2 class="text-center" style="font-weight: bold;font-size:50px;">User Register Form</h2>
    <br>

     <form action="<%=request.getContextPath()%>/registers" method="post" style="font-size:20px;">

      <div class="form-group">
       <label for="uname">First Name:</label> <input type="text"
        class="form-control" id="uname" placeholder="First Name"
        name="firstName" required>
      </div>

      <div class="form-group">
       <label for="uname">Last Name:</label> <input type="text"
        class="form-control" id="uname" placeholder="last Name"
        name="lastName" required>
      </div>

      <div class="form-group">
       <label for="uname">User Name:</label> <input type="text"
        class="form-control" id="username" placeholder="User Name"
        name="username" required>
      </div>

      <div class="form-group">
       <label for="uname">Password:</label> <input type="password"
        class="form-control" id="password" placeholder="Password"
        name="password" required>
      </div>

      <button type="submit" class="btn btn-primary" style="margin-left: 330px">Submit</button>

     </form>
    </div>
   </div>
  </div>
</body>
</html>