package com.servlet.adoption.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.servlet.adoption.dto.User;
import com.servlet.adoption.util.DBConnection;

public class UserDAOImpl implements UserDAO {
	Connection con=null;
	public boolean registerUser(User user) {

			con=DBConnection.getConnector();
			String register="INSERT into employee values(?,?,?,?,?,?,?)";
			try {
				PreparedStatement ps=con.prepareStatement(register);
				ps.setString(1, user.getUsername());
				ps.setString(2, user.getEmail());
				ps.setLong(3, user.getPhone());
				ps.setString(4, user.getPassword());
				ps.setString(5, user.getAddress());
				
				int count=ps.executeUpdate();
				if(count>0) {
					return true;
				}
			} catch (SQLException e) {
				
		e.printStackTrace();
			}
		return false;
	}
	public User loginUser(String email,String password) {
		
		String login="SELECT *FROM employee WHERE email=? AND password=?";
		con=DBConnection.getConnector();
		User user=null;
		try {
			PreparedStatement ps=con.prepareStatement(login);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()){
				//if record present we will set data from database into dto object
				user=new User();
				user.setUsername(rs.getString(1));
				user.setEmail(rs.getString(2));
				user.setPhone(rs.getLong(3));
				user.setPassword(rs.getString(4));
				user.setAddress(rs.getString(5));
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return user;
	}
	
}
