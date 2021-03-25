<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<!-- To Access the Bootstrap link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href=".resources/css/registerpage.css" rel="stylesheet"/>
<style type="text/css">
  .backgroundclr
  { 
    background-color: #1a0000;
  }
</style>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!-- Registration form here -->
<div class="container">
    <center><h3 class="well" style="font-family: Copperplate Gothic;font-style: italic;color:#0000cc">Register With us..</h3></center>
	<div class="col-lg-12 well">
	<div class="row">
				<form class ="form-horizontal" action="userlogin" method="post" onsubmit="return validate()">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label> Email id</label>
								<input type="text" placeholder="Enter Email  Here.." class="form-control" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required name="usermail">
							</div><br/>
							<div class="col-sm-6 form-group">
								<label>NAME</label>
								<input type="text" placeholder="Enter  Name Here.." class="form-control" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{1,20}$" required name="username">
							</div>
						</div>	
						<div class="col-sm-6 form-group">
								<label>PASSWORD</label>
								<input type="text" placeholder="**********" class="form-control"  pattern="[A-Za-z]+" required name="userpass">
							</div>
						</div>					
						<div class="form-group">
							<label>ADDRESS</label>
							<textarea placeholder="Enter Address Here.." rows="3" class="form-control" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{1,20}$" required name="useraddress"></textarea>
						</div>	
						<div class="row">
								
							<div class="col-sm-4 form-group">
								<label>AGE</label>
								<input type="text" placeholder="Enter Age Here.." class="form-control" required name="userage">
							</div>	<br/>
							<div class="col-sm-4 form-group">
								<label>CITY</label>
								<input type="text" placeholder="City..." class="form-control" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{1,20}$" required name="usercity">
							</div>		
						</div>
							
							
						</div>						
					<div class="form-group">
						<label>Mobile Number</label>
						<input type="text" placeholder="Enter Phone Number Here.." class="form-control" pattern="^\{10}$" required name="userphone">
					</div>		
						
					<div class="form-group">
						<label>GENDER</label>
						<input type="text" placeholder="Enter Gender Here.."  class="form-control" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{1,20}$" required name="usergen">
						
					</div>
					
					<center>
					<input type="submit" class="btn btn-lg btn-info" value="REGISTER"></input>	</center>				
					</div>
				</form> 
				</div>
	</div>
	 <!-- Footer of the webpages -->

 <!--<jsp:include page="footer.jsp"></jsp:include>-->
	
	</div>
</body>
</html>