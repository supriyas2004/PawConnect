package com.servlet.adoption.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	String email = request.getParameter("email");
        String password = request.getParameter("password");

		PrintWriter out = response.getWriter();
        if (USERNAME.equals(email) && PASSWORD.equals(password)) {
         
            HttpSession session = request.getSession();
            session.setAttribute("userEmail", email);

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