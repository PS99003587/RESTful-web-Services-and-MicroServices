<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ page errorPage = "error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 
 
</head>
<body>
<div class="container">
<%-- <nav class="navbar navbar-inverse navbar-fixed-top" id="mynav">
    <div class="container">
     <div class="navbar-header">
       <a class="navbar-brand"  href="home">Video Cart</a>
       
     </div>
     <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="home">Home</a></li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="">Category<span class="caret"></span></a>
                     <ul class="dropdown-menu">
                     <c:forEach var="catVal" items="${categorylist}">
                          		 <li><a href="productCustList?cid=${catVal.categoryid}">${catVal.categoryname}</a></li>
   								 </c:forEach>
                     </ul>
                    </li>
                    <li><a href="CategoryList">Products<span class="caret"></span></a></li>
                    <li><a href="adding">AddDetails</a></li>
                    <li><a href="CategoryList">CategoryList</a></li>
                    <li><a href="supplierlist">SupplierList</a></li>
                    <li><a href="CategoryList">ProductList</a></li>
                    <li>
					<form class="navbar-form navbar-left">
                       <div class="form-group">
                       <input type="text" class="form-control" placeholder="Search">
                       </div>
                       <button type="submit" class="btn btn-default"><i class ="glyphicon glyphicon-search"></i></button>
                    </form>
               </li>
                    <li><a href="login"><span class="glyphicon 
                    glyphicon-log-in"></span>Login</a></li>
                    <li><a href="signup">
                    <span class="glyphicon  glyphicon-user"></span> Sign Up</a></li>
 
                </ul>
     </div>
   </div>
  </nav> --%>
    <nav class="navbar navbar-default">
	<div class="container-fluid">

		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
							
			<a class="navbar-brand" href="./">				
				<%-- <img src='<c:url value="${pageContext.request.contextPath}resources/images/logo1.jpg" />' width="50px" height="25px" class="img-responsive"/>
			 --%>
			  <img src="${pageContext.request.contextPath}/resources/images/logo1.jpg"  width="50px" height="30px" class="img-responsive"/>
			 </a>
		</div>		
		
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				
				<!-- <li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Products <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li>Category 1</li>
						<li>Category 1</li>
						<li>Category 1</li>
					</ul>
				</li> -->
					<li><a href="<c:url value="admin/adding"/>" role="button" aria-haspopup="true"
					aria-expanded="false">Add Video CD Details</a></li>
					 <li><a href="plistview">Available Video CD List</a></li>
					 <li><a href="CategoryList">CategoryList</a></li>
                    <li><a href="supplierlist">SupplierList</a></li>
			</ul>
		            
                   
        			<!-- <li><a href="productsdetails">Add Cart</a></li> -->
		
			    <li>
					<form class="navbar-form navbar-left">
                       <div class="form-group">
                       <input type="text" class="form-control" placeholder="Search">
                       </div>
                       <button type="submit" class="btn btn-default"><i class ="glyphicon glyphicon-search"></i></button>
                    </form>
               </li>
				<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
                                <li><a href="<c:url value="/admin" />">Admin</a></li>
                 </c:if>
                 
			  <ul class="nav navbar-nav navbar-right">
			  <c:if test="${pageContext.request.userPrincipal.name == null }">
					<li>
					<a href=' <c:url value="/login" />'>Login</a>
					</li>
				<li><a href='<c:url value="/signup" />'>Signup</a></li>
				
				</c:if>
				<c:if test="${pageContext.request.userPrincipal.name  != null}">
                               <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
	              				<li><a href='<c:url value="/logout" />'>Signout</a></li>
                 </c:if>
				
				</ul>
		</div>		
	</div>
</nav>
  
 </div>
</body>
</html>