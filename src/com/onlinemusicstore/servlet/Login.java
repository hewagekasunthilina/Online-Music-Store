package com.OnlineMusicStore.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.OnlineMusicStore.model.User;
import com.OnlineMusicStore.service.IUserService;
import com.OnlineMusicStore.service.UserServiceImpl;

import java.io.IOException;

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		HttpSession session = request.getSession();   
		session.invalidate();
        
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/login.jsp");
		dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		User user = new User();
		
		user.setFirstName(request.getParameter("userName"));
		user.setPassword(request.getParameter("password"));
		
		
		IUserService iUserService = new UserServiceImpl();
		user = iUserService.loginUser(user);
		
		String type = user.getType();
		
		if(user.isValid()) {
			
			HttpSession session = request.getSession();   
	        session.setAttribute("currentSessionUser", user);
	        session.setAttribute("type", type);
	        
			
			response.sendRedirect("index.jsp");
			
		}
		
		else {
			
			String errorString = "Invalid Username or Password";
			request.setAttribute("errorString", errorString);
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/login.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
		
	}

}

}
