package com.pack;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.xdevapi.Statement;

public class RegistrationServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
//    public RegistrationServ() {
//        super();
//    
//    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("hey man");
		response.setContentType("text/html"); 
		//System.out.println("hey man");
		PrintWriter out = response.getWriter();  
		          
		String n=request.getParameter("userName");  
		String p=request.getParameter("userPass");  
		String e=request.getParameter("userEmail");  
		String c=request.getParameter("country"); 
		String con=request.getParameter("contact"); 
		String add=request.getParameter("address"); 
		//System.out.println("hey man");
		//out.print(n+" "+p+" "+e+" "+c+" "+con+" "+add);
	//	System.out.println(n+" "+p+" "+e+" "+c+" "+con+" "+add);
		try{  
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con1=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/actions","root","Tanu#110302");  
//			Statement stmt=(Statement) con1.createStatement();  
//			ResultSet rs=((java.sql.Statement) stmt).executeQuery("insert into register values(?,?,?,?,?,?)");  
		PreparedStatement ps=con1.prepareStatement(  
	"insert into registers values(?,?,?,?,?,?)");  
	//	System.out.println(n+" "+p+" "+e+" "+c+" "+con+" "+add);
//		ps.setRowId(1,null);
//		ps.setString(2,n);  
//		ps.setString(3,p);  
//		ps.setString(4,e);  
//		ps.setString(5,c);
//		ps.setString(6,con);  
//		ps.setString(7,add);  
		 
		
		ps.setString(1,n);  
		ps.setString(2,p);  
		ps.setString(3,e);  
		ps.setString(4,c);
		ps.setString(5,con);  
		ps.setString(6,add); 

		
		//	System.out.println(n+" "+p+" "+e+" "+c+" "+con+" "+add);
			int i=ps.executeUpdate(); 
			
			System.out.println("hey");
			if(i>0)  {
			   out.print("You are successfully registered...");  
		      System.out.println("done registration");
		      request.setAttribute("status", "success");
			}
			else {
				request.setAttribute("status", "failed");
			}
		          
			}catch (Exception e2) {System.out.println(e2);}
			          
			out.close();  
			}  
		
		
		
		}


