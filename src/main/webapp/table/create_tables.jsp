<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>


<% 
try
{
    Connection con=ConnectionProvider.getCon();
    Statement st=con.createStatement();
    String q1="create table product1(id int primary key, name varchar(500), category varchar(200),price int,active varchar(10))";
    System.out.println(q1);
    
    st.execute(q1);
    
    System.out.print("Table Created");
    con.close();
}
catch(Exception e)
{
	System.out.print(e);
	
}

%>

