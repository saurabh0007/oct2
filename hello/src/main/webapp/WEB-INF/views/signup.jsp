<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="/head-meta" />
<title>signup</title>
</head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;s
    }
    
 
  }

  }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Contact</a></li>
        <li><a href="#">BloodRequirement</a></li>
         <li><a href="#">BloodRequirement</a></li>
         
  </div> 
</div>
      
   
</nav>

<br>
<br>


  <legend style="color:red;">SIGN UP</legend>
  
  <br>
  <br>
  <form:form class="form-horizontal" modelAttribute="person" action="AddUserToDB" method="post">
  
   <div class="form-group">
      <label class="control-label col-sm-2" for="username">User Name:</label>
      <div class="col-sm-10">
         <form:input path="username" type="text" name="username" class="form-control" placeholder="Enter username" ng-model="UserName" ng-change="CheckUserName()" />
        <form:errors path="username" class="text text-danger" />
        <label ng-if="UserNameCheck == true" class="text text-danger">Invalid Username Value. Cannot Be Empty</label>
      </div>
    </div>
    
    <br>
    
    <div class="form-group">
      <label class="control-label col-sm-2">Password:</label>
      <div class="col-sm-10">
        <form:input path="password" type="password" class="form-control" placeholder="Enter password" />
        <form:errors path="password" class="text text-danger" />
      </div>
    </div>
    
    <br>
    
    <div class="form-group">
      <label class="control-label col-sm-2">Confirm Password:</label>
      <div class="col-sm-10">
        <form:input path="cPassword" type="password" class="form-control" placeholder="Confirm password" />
        <form:errors path="cPassword" class="text text-danger" />
      </div>
    </div>
    
    <br>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
        <form:input path="email" type="text" name="email" value="" class="form-control" placeholder="Enter email" />
        <form:errors path="email" class="text text-danger" />
      </div>
    </div>
     
     <br>
     
     <div class="form-group">
      <label class="control-label col-sm-2" for="phone">Phone:</label>
      <div class="col-sm-10">
        <form:input path="phone" type="text" name="phone" value="" class="form-control" placeholder="Enter Phonenumber" />
        <form:errors path="phone" class="text text-danger" />
      </div>
    </div>
    
    <br>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="location">Location:</label>
      <div class="col-sm-10">
        <form:input path="location" type="text" name="location" value="" class="form-control" placeholder="Enter location" />
        <form:errors path="location" class="text text-danger" />
      </div>
    </div>
    
    <br>
    
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox">Remember me</label>
        </div>
      </div>
    </div>
    
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-info" ng-disabled="OverallError == true">Submit</button>
      </div>
    </div>
    
    
  </form:form>
</div>

<br>
 <br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<%-- <%@include file="footer.jsp" %> --%>

</body>
</html>