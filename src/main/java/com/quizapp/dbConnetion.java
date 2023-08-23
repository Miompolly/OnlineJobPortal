package com.quizapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

public class dbConnetion {


	String dburl="jdbc:mysql://localhost:3306/jobportal";
	String dbuser="root";
	String dbpwd="";
	String dbdriver="com.mysql.cj.jdbc.Driver";
	Connection con=null;
	
	public void loadDriver() {
		try {
			Class.forName(dbdriver);
		} catch (ClassNotFoundException e) {
		
			e.printStackTrace();
		}
	}
	
	public Connection getCon() {
		try {
			con=DriverManager.getConnection(dburl,dbuser,dbpwd);
		} catch (SQLException e) {
			
			e.printStackTrace();
		System.out.println("DB not connected"+e.getMessage());
		}
		return con;
		
	}
	
	public String addUser(User user1) {
		String messag="Created Successfully";
		
		loadDriver();
		Connection cnx=getCon();
		
	String selectEmail="SELECT * FROM Users WHERE username=?";
	try {
		PreparedStatement stmE=cnx.prepareStatement(selectEmail);
		stmE.setString(1, user1.getUsername());
		ResultSet results=stmE.executeQuery();
		if(results.next()) {
			JOptionPane.showMessageDialog(null, "Username already Exist !! ");
		}else {

			String sql="INSERT INTO Users (username,password,full_name)VALUES(?,?,?)";
			try {
				PreparedStatement stm=cnx.prepareStatement(sql);
				stm.setString(1,user1.getUsername());
				stm.setString(2,user1.getPassword());
				stm.setString(3,user1.getFull_name());
			
			
				int rs=stm.executeUpdate();
				
				if(rs>0) {
					JOptionPane.showMessageDialog(null, "User Created Successfully");
				}
				else {
					JOptionPane.showMessageDialog(null, "User not Created !!! Try again");
				}
			} catch (SQLException e) {
			
				e.printStackTrace();
				System.out.println("User not created ,"+e.getMessage());
			}
			
		}
		
		
	} catch (SQLException e) {
		
		e.printStackTrace();
	}

		
		
		return messag;
		
	}
	
	public ResultSet getUser(loginUser loguser1) {
		ResultSet row=null;
		loadDriver();
		Connection cnx=getCon();
		String sql="SELECT * FROM Users WHERE username=? AND password=?";
		try {
			PreparedStatement stm=cnx.prepareStatement(sql);
			stm.setString(1, loguser1.getUsername());
			stm.setString(2, loguser1.getPassword());
			row=stm.executeQuery();
	
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		
		return row;
		
	}
	
	 public String addJob(Job job) {
	        String message = "Job Added Successfully";

	        loadDriver();
	        Connection cnx = getCon();

	        String sql = "INSERT INTO Jobs (jobTitle, jobDescription, skillsRequired, experienceRequired, salary) VALUES (?, ?, ?, ?, ?)";
	        try {
	            PreparedStatement stm = cnx.prepareStatement(sql);
	            stm.setString(1, job.getJobTitle());
	            stm.setString(2, job.getJobDescription());
	            stm.setString(3, job.getSkillsRequired());
	            stm.setInt(4, job.getExperienceRequired());
	            stm.setBigDecimal(5, job.getSalary());

	            int rs = stm.executeUpdate();

	            if (rs <= 0) {
	                message = "Job not added. Please try again.";
	            }
	            else {
	            	 message = "Job added successfully";
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            message = "Job not added due to an error: " + e.getMessage();
	        }

	        return message;
	    }
	 
	 public ResultSet getAllJobs() {
			ResultSet row=null;
			   loadDriver();
			 Connection cnx =getCon();
			 
			 String sql="SELECT * FROM Jobs";
			 try {
				PreparedStatement stmt = cnx.prepareStatement(sql);
				row=stmt.executeQuery();
			} catch (SQLException e) {	
				e.printStackTrace();
			System.out.println("Failed get data"+e.getMessage());
			}
			 
			return row;
		}
	
}
