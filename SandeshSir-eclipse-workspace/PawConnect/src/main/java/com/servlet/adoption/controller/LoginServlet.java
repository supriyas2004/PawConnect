package com.servlet.adoption.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.servlet.adoption.dao.UserDAO;
import com.servlet.adoption.dao.UserDAOImpl;
import com.servlet.adoption.dto.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {

	UserDAO edao=null;
	public LoginServlet(){
		edao=new UserDAOImpl();
		
	}
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	String email = request.getParameter("email");
        String password = request.getParameter("password");
         User user = edao.loginUser(email, password);
		PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();

		if(user!=null) { 
			System.out.println("User object");
            session.setAttribute("userEmail", email);
    		out.print("Logged in Successfully");

            response.sendRedirect("dashboard.jsp");
        } else {
            // Invalid login
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Invalid Email or Password!');");
            out.println("location='login.jsp';");
            out.println("</script>");
        }
    }
}