package com.luv2code.web.jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	//Define datasource/connection pool for Resource Injection
	@Resource(name="jdbc/event_guest_tracker")
	private DataSource dataSource;
	
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			//Step 1: Set up print writer
			PrintWriter out = response.getWriter();
			response.setContentType("text/plain");
		
			//Step 2 : get connection to the database
			
			Connection myConn = null;
			Statement myStmt = null;
			ResultSet myRs = null;
			
			try {
				
				myConn = dataSource.getConnection();
			
			
			//Step 3: Create SQL statements
		
				String sql = "select * from guests";
				myStmt = myConn.createStatement();
			//Step 4: Execute SQL query
				
				myRs = myStmt.executeQuery(sql);
		
			//Step 5: Process the result set
				while(myRs.next()) {
					String fname = myRs.getString("fname");
					
					out.println(fname);
				}
				
		
			}
			catch(Exception exc) {
				
				exc.printStackTrace();
				
			}
		
		
	}

}
