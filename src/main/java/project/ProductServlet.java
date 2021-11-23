package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class contactUsdisServlet
 */
@WebServlet("/contactUsdisServlet")
public class ProductServlet {

	private String jdbcURL = "jdbc:mysql://localhost:3306/onlinemedicineorderingsystem";
	private String jdbcUserName = "root";
	private String jdbcPassword = "1999";
	
	
	private static final String SELECT_ALL_USERS ="select * from product";
	
	
	
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	List<Product> listProduct = ProductDBUtil.getProductDetails();
	request.setAttribute("listProduct", listProduct);
	RequestDispatcher dispatcher = request.getRequestDispatcher("Add_item.jsp");
	dispatcher.forward(request, response);
	
		

	
}

}
