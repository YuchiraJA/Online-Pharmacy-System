
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
//String email=session.getAttribute("email").toString();

String id=request.getParameter("id");
String incdec=request.getParameter("quantity");
double price=0;
double total=0;
int quantity=0;
double final_total=0;

try
{
	Connection con=ConnectionProvider.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from cart where product_id='"+id+"' ");
	while(rs.next())
	{
		price=rs.getDouble(3);
		total=rs.getDouble(4);
		quantity=rs.getInt(2);
	}
	if(quantity==1 && incdec.equals("dec"))
		response.sendRedirect("MyCart.jsp?msg=notPossible");
	else if(quantity !=1 && incdec.equals("dec"))
	{
		total=total-price;
		quantity=quantity-1;
		st.executeUpdate("update cart set total='"+total+"',quantity='"+quantity+"' where product_id='"+id+"' ");
		response.sendRedirect("MyCart.jsp?msg=dec");
	}
	else
	{
		total=total+price;
		quantity=quantity+1;
		st.executeUpdate("update cart set total='"+total+"',quantity='"+quantity+"' where product_id='"+id+"' ");
		response.sendRedirect("MyCart.jsp?msg=inc");
	}
}
catch(Exception e)
    {  
	System.out.println(e);
	}

%>