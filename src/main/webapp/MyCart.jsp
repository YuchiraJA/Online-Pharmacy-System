<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MyCart</title>
<style>
 
    body {
  font-family: "Open Sans", sans-serif;
  line-height: 1.25;
   background-image: linear-gradient(to left, #22018c , #01738c);
  background-color: #0080FF;
  
}


h3
{
	color:  #00eeff;
	text-align: center;
}

body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.hero-image {
  background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("images/medi12.jpg");
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
    <h1>MY CART <i class='fas fa-cart-arrow-down'></i></h1>
  <p>  
  
  
  
<%
String msg=request.getParameter("msg");
if("notPossible".equals(msg))
{
%>

<h3 class="alert">There is only one Quantity! So click on remove!</h3>
<%} %>

<%
if("inc".equals(msg))
{
%>
<h3 class="alert">Quantity  Increased Successfully!</h3>
<%} %>

<%
if("dec".equals(msg))
{
%>
<h3 class="alert">Quantity  Decreased Successfully!</h3>
<%} %>

<%
if("remove".equals(msg))
{
%>
<h3 class="alert">Product Successfully Removed!</h3>
<%} %>
    </p>

  </div>
</div>






<table>
<thead>

<%
int total=0;
int sno=0;
try{
	 Connection con=ConnectionProvider.getConnection();
	 Statement st=con.createStatement();
	 ResultSet rs1=st.executeQuery("select sum(total) from cart");
	 while(rs1.next())
	 {
		 total=rs1.getInt(1);
	 }
	 %>


          <tr>
            <th scope="col" style="background-color: #00eeff;"> Total: <b>LKR. </b><%out.println(total); %> </th>
            <%if(total>0) { %><th scope="col"><a href="addressPaymentForOrder.jsp">Proceed to order</a></th><%}%>
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Description</th>
            <th scope="col"><b>LKR. </b> price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
            <th scope="col">Remove <i class='fas fa-trash-alt'></i></th>
          </tr>
        </thead>
        <tbody>
         <%
         ResultSet rs=st.executeQuery("select *from product inner join cart on product.id=cart.product_id");
         while(rs.next())
         {
         %>   
      
          <tr>
          <%sno=sno+1;%>
            <td><%out.println(sno); %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><b>LKR. </b><%=rs.getString(4) %></td>
            <td><a href="incDecQuantityAction.jsp?id=<%=rs.getString(1)%>&quantity=inc"><i class='fas fa-plus-circle'></i></a><%=rs.getString(6) %>  <a href="incDecQuantityAction.jsp?id=<%=rs.getString(1)%>&quantity=dec"><i class='fas fa-minus-circle'></i></a></td>
            <td><b>LKR. </b><%=rs.getString(8) %> </td>
            <td><a href="removeFromCart.jsp?id=<%=rs.getString(1)%>">Remove <i class='fas fa-trash-alt'></i></a></td>
          </tr>

<%
         }

}
catch(Exception e){}
%>


        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>

<%@include file="footer.jsp" %>