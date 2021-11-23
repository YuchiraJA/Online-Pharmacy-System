

<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>



  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>



<style>
.footer {
   position: fixed;
 

}

    body {
  font-family: "Open Sans", sans-serif;
  line-height: 1.25;
    background-image: url("images/med12345.jpg");
  background-color: #0080FF;
  
}


h3
{
	color: yellow;
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
    <h1 style="font-size:50px"><div style="color: white; text-align: center; font-size: 30px;">Search Result..<i class="fa fa-search"></i></div></h1>
 
    
    <div class="topnav">
    <form action="searchProduct.jsp" method="post">
    <input type="text" placeholder="Search" name="search">
    <button type="submit"><i class="fa fa-search"></i></button>
    </form>
    </div>
    
  </div>
</div>








<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>

<%      
int z=0;
try{
    	
         String search=request.getParameter("search");
	     Connection con=ConnectionProvider.getConnection();
	     Statement st=con.createStatement();
	     ResultSet rs=st.executeQuery("select * from product where name like '%"+search+"%'");
	     while(rs.next())
	 {
	    	   z=1;
	 

%>       

          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(4) %></td>
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
      
      <%if(z==0) { %>	
	<h1 style="color:white; text-align: center;">Nothing to show</h1>
	<%} %>
      <br>
      <br>
      <br>
    



         


</body>
</html>

<%@include file="footer.jsp" %>