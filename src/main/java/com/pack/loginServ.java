package com.pack;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.protocol.Resultset;

/**
 * Servlet implementation class loginServ
 */
public class loginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html"); 
		//System.out.println("hey man");
		PrintWriter out = response.getWriter();  
		String username=request.getParameter("userName");
		String password=request.getParameter("userPass");
		RequestDispatcher dispatcher=null;
	//	System.out.println(username+" "+password);
		try{  
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con1=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/actions","root","Tanu#110302");  
			PreparedStatement ps=con1.prepareStatement(  
					"select * from registers where NameUser=? && Passwords=?");
			ps.setString(1,username);
			ps.setString(2, password);
			System.out.println("doing");
			//Resultset rs=ps.executeQuery();			
			ResultSet rs=ps.executeQuery();
//			while(rs.next()) {
//				System.out.println(rs.getString(1)+"  "+rs.getString(2));  
//				
//			}
		     if (rs.next()) {
	                out.print("Login successful");
	                dispatcher = request.getRequestDispatcher("home.jsp");
	                dispatcher.forward(request, response); // Forwarding to home.jsp
	            } else {
	                out.print("User not found");
	                dispatcher = request.getRequestDispatcher("login.jsp");
	                dispatcher.include(request, response); // Including login.jsp again
	            }
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
	}

}
