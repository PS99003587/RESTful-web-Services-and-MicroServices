<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Video CD'S Edit View</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" type="text/css">
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
	<script src="./resources/js/jquery.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="./resources/css/jquery.dataTables.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" href="./resources/css/shoe.css">
    <link rel="stylesheet" href="./resources/css/caroualresponsive.css">

</head>
<body>
<jsp:include page="header.jsp"/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>

<div class="container">
<div class="row">
<h2>Edit Video CD Details</h2>
<hr/>
  <form action="product_update"  method="post"  enctype="multipart/form-data">
    <div class="form-group">
      <label for="p_id">Video CD  ID :</label>
      <input type="text" class="form-control" id="p_id" name="p_id" value="${product.productid}" required="required">
    </div>
    <div class="form-group">
      <label for="p_name">Video CD Name :</label>
      <input type="text" class="form-control" id="p_name"  name="p_name" value="${product.productname}" required="required">
    </div>
    <%-- <div class="form-group">
      <label for="p_desc">Product Description :</label>
      <input type="text" class="form-control" id="p_desc" placeholder="Enter Product Description " name="desc"value="${product.productdiscription}" required >
    </div> --%>
    <div class="form-group">
      <label for="p_price">Video CD Price :</label>
      <input type="text" class="form-control" id="p_price"  name="p_price"value="${product.productprice}" required="required">
    </div>
    <div class="form-group">
  <label class="col-md-4 control-label" for="c_id" >Select Video CD Category</label>
  <div class="col-md-4">
    <select id="c_id" class="form-control" name="c_id">
      <c:forEach var="list" items="${clist}">

                <option value="${list.categoryid}">${list.categoryname}</option>

            </c:forEach>
    </select>
  </div>
</div>
<br/>
<br/>
<div class="form-group">
  <label class="col-md-4 control-label" for="s_id" >Select Video CD Supplier</label>
  <div class="col-md-4">
    <select id="s_id" class="form-control" name="s_id">
      <c:forEach var="list" items="${slist}">

                <option value="${list.suplierid}">${list.suppliername}</option>

            </c:forEach>
    </select>
  </div>
</div>
<br/>
<br/>
<br/>

<div class="form-group">
      <label for="img">Upload Image:</label>
       <input type="file" id="img"  name="file" value="${product.p_image}" required>
      
      <!--  <input type="file" id="img" name="file"  required> -->
    </div>
    <button type="submit" class="btn btn-primary" >Save</button>
  </form>
          
           

</div></div>
	
<jsp:include page="footer.jsp" />  

</body>
</html>