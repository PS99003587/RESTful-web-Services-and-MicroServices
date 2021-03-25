<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ page errorPage = "error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container"> 
<div class="row">
<h2>Edit Product Details</h2>
<hr/>
  <form action="product_update"  method="post"  enctype="multipart/form-data">
    <div class="form-group">
      <label for="p_id">Product  ID :</label>
      <input type="text" class="form-control" required id="p_id" placeholder="Enter Product ID" name="productid" value="${product.productid}">
    </div>
    <div class="form-group">
      <label for="p_name">Product Name :</label>
      <input type="text" class="form-control" required id="p_name" placeholder="Enter Product Name " name="productname" value="${product.productname}">
    </div>
    <div class="form-group">
      <label for="p_desc">Product Description :</label>
      <input type="text" class="form-control" required id="p_desc" placeholder="Enter Product Description " name="productdiscription"value="${product.productdiscription}" >
    </div>
    <div class="form-group">
      <label for="p_price">Product Price :</label>
      <input type="text" class="form-control" required id="p_price" placeholder="Enter Product Price " name="productprice"value="${product.productprice}" >
    </div>
    <div class="form-group">
  <label class="col-md-4 control-label" for="c_id" >Select Category</label>
  <div class="col-md-4">
    <select id="c_id" class="form-control" name="c_id">
      <c:forEach var="list" items="${list}">

                <option value="${list.categoryid}">${list.categoryname}</option>

            </c:forEach>
    </select>
  </div>
</div>
<br/>
<br/>
<div class="form-group">
  <label class="col-md-4 control-label" for="s_id" >Select Supplier</label>
  <div class="col-md-4">
    <select id="s_id" class="form-control" name="s_id">
      <c:forEach var="slist" items="${slist}">

                <option value="${slist.supplierid}">${slist.suppliername}</option>

            </c:forEach>
    </select>
  </div>
</div>
<br/>
<br/>
<br/>

<div class="form-group">
      <label for="img">Upload Image:</label>
      <input type="file" id="img" name="file">
    </div>
    <button type="submit" class="btn btn-primary" >Save</button>
  </form>
          
           

</div></div>
</body>
</html>