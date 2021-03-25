<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage = "error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  
.form_bg {
    background-color:#eee;
    color:#666;
    padding:20px;
    border-radius:10px;
    position: absolute;
    border:1px solid #fff;
    margin: auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 500px;
    height: 350px;
}
.align-center {
    text-align:center;
    width: 200px;
    height: 150px;
}
  </style>
</head>
<body>
<div class="panel panel-primary">
<div class="panel-heading">
   <!-- Header Content -->
   <jsp:include page="header.jsp"/>
</div>
<div class="panel-body">
<div class="container">
    <div class="row">
        <div >
              <form class="form-horizontal" action="login" method="post" onsubmit="return validate()"> 
                 <h2 class="text-center">User login Page</h2>
                <br/>
                <div class="form-group">
                    <input type="email" class="form-control" id="userid" placeholder="Email Id">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" id="pwd" placeholder="Password">
                </div>
                <br/>
                <div class="align-center">
                    <button type="submit" class="btn btn-default" id="login">Login</button>
                    <button type="submit" class="btn btn-default" id="login">Cancel</button>
                </div>
            </form>
        </div>
    </div>
</div>
</div>
<div class="panel-footer">
<!-- Footer Content -->
 <jsp:include page="footer.jsp"/>
</div>
</div>
</body>
</html>