
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>



<%
//String email =session.getAttribute("email").toString();
String product_id=request.getParameter("id");
int quantity=1;
double product_price=0;
double product_total=0;
double cart_total=0;

int z=0;
 
try{
	Connection con=ConnectionProvider.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from product where id='"+product_id+"' ");
	while(rs.next()){
		product_price=rs.getDouble(4);
		product_total=product_price;
	}
	ResultSet rs1=st.executeQuery("select *from cart where product_id='"+product_id+"' ");
	while(rs1.next())
	{
		cart_total=rs1.getDouble(4);
		cart_total=cart_total+product_total;
		quantity=rs1.getInt(2);
		quantity=quantity+1;
		z=1;
	}
	if(z==1)
			{
		st.executeUpdate("update cart set total="+cart_total+" ,quantity='"+quantity+"' where product_id="+product_id+"  ");
		response.sendRedirect("Add_item.jsp?msg=exist");
	}
	if(z==0)
	{
		PreparedStatement ps=con.prepareStatement("insert into cart(product_id,quantity,price,total) values (?,?,?,?) ");
		ps.setString(1, product_id);
		ps.setInt(2, quantity);
		ps.setDouble(3, product_price);
		ps.setDouble(4, product_total);
		ps.executeUpdate();
		response.sendRedirect("Add_item.jsp?msg=added");
	}
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("Add_item.jsp?msg=invalid");
}
%>>