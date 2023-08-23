package com.quizapp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String username = request.getParameter("email");
	      String password = request.getParameter("password");      
	      dbConnetion db=new dbConnetion();
	        db.getCon();
	        loginUser log=new loginUser(username, password);
	        ResultSet userData = db.getUser(log);
	        
	        
	        try {
				while(userData.next()) {
					String role=userData.getString("role");
					String names=userData.getString("full_name");
				    String	emailLog=userData.getString("username");
					System.out.println(role);
					if(role.equals("user")) {
						HttpSession session = request.getSession();
	                    session.setAttribute("fullName", names);
	                    session.setAttribute("emailLog",emailLog );
						response.sendRedirect("userDashboard.jsp");
					}else if(role.equals("admin")) {
						response.sendRedirect("adminDashboard.jsp");
					}else {
						JOptionPane.showMessageDialog(null, "No user Found");
						response.sendRedirect("login.jsp");
					}
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
	      
	}

}
