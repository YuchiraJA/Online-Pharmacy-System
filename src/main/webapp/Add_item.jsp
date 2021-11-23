

<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>



  


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title> 
<style>

    body {
  font-family: "Open Sans", sans-serif;
  line-height: 1.25;
    background-image: url("images/med12345.jpg");
  background-color: #0080FF;
  
}


h3
{
	color: #59d1f0;
	text-align: center;
}

body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.hero-image {
  background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("images/mede12.jpg");
  height: 50%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

.hero-text {
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
}

.hero-text button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 10px 25px;
  color: black;
  background-color: #ddd;
  text-align: center;
  cursor: pointer;
}

.hero-text button:hover {
  background-color: #555;
  color: white;
}
</style>


<link rel="stylesheet" type="text/css"  href="css/home-style.css">
</head>
<body>


<div class="hero-image">
  <div class="hero-text">
    <h1 style="font-size:50px"><div style="color: white; text-align: center; font-size: 30px;">Products <i class='fab fa-elementor'></i></div></h1>
    
    <div>
    <p> 
    
<%
String msg=request.getParameter("msg");
if("added".equals(msg))
{
%>

<h3 class="alert">Product added successfully!</h3>
<%} %>


<%
if("exist".equals(msg))
{
%>

<h3 class="alert">Product already exist in you cart!</h3>
<h3 class="alert">Quantity  increased!</h3>
<%} %>

<%
if("invaild".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try Again! </h3>
<%} %>

   </p>
   </div>
    

    <div class=search-content>
    <div class="topnav">
    <form action="searchProduct.jsp" method="post">
    <input width="20px" type="text" placeholder="Enter Product Name" name="search">
    <button type="submit"><i class="fa fa-search"></i></button>
    </form>
    </div>
    </div>
   
    
  </div>
</div>







<table>
        <thead>
          <tr>
            <th scope="col"><h4>ID</h4></th>
            <th scope="col"><h4>Name</h4></th>
            <th scope="col"><h4>Category</h4></th>
            <th scope="col"><h4> Price</h4></th>
            <th scope="col"><h4>Add to cart</h4> <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
        
  <% //retrive data form product table %> 
        
  <%      
    try{
	 Connection con=ConnectionProvider.getConnection();
	 Statement st=con.createStatement();
	 ResultSet rs=st.executeQuery("select * from product");
	 while(rs.next())
	 {

%>        

          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><b>LKR. </b> <%=rs.getString(4) %></td>
            <td><a href="addToCartAction.jsp?id=<%=rs.getString(1) %>">Add to cart <i class='fas fa-cart-plus'></i></a></td>
          </tr>
<%
}
}
catch(Exception e)
  {
	System.out.println(e);
	} %>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>
<%@include file="footer.jsp" %>
