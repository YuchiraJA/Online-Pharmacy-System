<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
//String email=session.getAttribute("email").toString();

//String id=request.getParameter("id");
String product_id=request.getParameter("id");


try{
	Connection con=ConnectionProvider.getConnection();
	Statement st=con.createStatement();
	//st.executeUpdate("delete from cart where product_id='"+id+"' ");
	st.executeUpdate("delete from cart where product_id='"+product_id+"' ");
	response.sendRedirect("MyCart.jsp?msg=removed");
    }
catch(Exception e)
{
	System.out.println(e);
}
%>