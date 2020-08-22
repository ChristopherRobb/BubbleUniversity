<!doctype html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <title>Student Tracker App</title>
  </head>
  <body>
  
  <!-- Navigation Section -->
  
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Bubble University</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#"><span class="sr-only">(current)</span></a>
      </li>

      
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <form class="form-inline">
  <div class="form-group mb-2">
    <label for="staticEmail2" class="sr-only">Email</label>
    <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="email@example.com">
  </div>
  <div class="form-group mx-sm-3 mb-2">
    <label for="inputPassword2" class="sr-only">Password</label>
    <input type="password" class="form-control" id="inputPassword2" placeholder="Password">
  </div>
  <button type="submit" class="btn btn-primary mb-2">Confirm identity</button>
</form>
    </form>
  </div>
</nav>
  
  
  
  
  
  <!-- Hero Section -->
  
  <div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">Bubble University</h1>
    <p class="lead"></p>
  </div>
</div>
  
  
  
  <div class="container">
  
  <!-- Add Student Form -->
  
  <h4 >Add Student</h4>
  
  
<form action="StudentControllerServlet" method="GET">

<input type="hidden" name="command" value="ADD"/>
 
 
  <div class="form-group row mt-5">
    <label for="fName" class="col-sm-2 col-form-label">First Name</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="firstName"/>
    </div>
  </div>
  
  <div class="form-group row">
    <label for="lName" class="col-sm-2 col-form-label">Last Name</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="lastName"/>
    </div>
  </div>
  <div class="form-group row">
    <label for="email" class="col-sm-2 col-form-label">Email</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="email"/>
    </div>
  </div>
  
  <div class="form-group row">
    <div class="col-sm-10">
      <input class="btn btn-primary" type="submit"  name ="submit" value="Submit">
      
      
    </div>
  </div>
</form>

<div style="clear : both;"></div>
				
				<p>
				<a href="StudentControllerServlet">Back to List</a>
				</p>
	</div>
    
    
    
</div>    
    
    
    
    
    
    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>