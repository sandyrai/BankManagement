package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Customer;
import com.service.BankService;

/**
 * Servlet implementation class BankController
 */
@WebServlet("/BankController")
public class BankController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BankController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method
		
		String action =request.getParameter("action");
		
		BankService b = new BankService();
		//String message="false";
		
		if(action.equals("showRegistrationPage")) {
			ArrayList<String>stateList =b.StateList();
			
			request.setAttribute("statelist", stateList);
			
			RequestDispatcher rd = request.getRequestDispatcher("Customer_Login.jsp");
			rd.forward(request, response);
			
		}
		
		else if(action.equals("AddCustomer")) {
			System.out.println("inside controlelr");
			String firstname = request.getParameter("FirstName");
			
			String lastname = request.getParameter("LastName");
			
			String age = request.getParameter("age");
			
			String email = request.getParameter("email");
			System.out.println(email);
			
			String mobile = request.getParameter("mobile");
			
			String password=request.getParameter("password");
			
			String confirmpassword=request.getParameter("confirmpassword");
			
			String Address = request.getParameter("address");
			
			String state=request.getParameter("state");
			
			int zipcode= Integer.parseInt(request.getParameter("zipcode"));
			
			
			
			Customer c = new Customer(firstname, lastname, age, email, mobile,password,Address,state,zipcode);
			
			System.out.println(c.toString());
			
			String result = b.addCustomerService(c);
			System.out.println(result);
			if(result.contains("true")) {
				
				String  res="true";
				request.setAttribute("res", res);
				RequestDispatcher rd = request.getRequestDispatcher("CustomerLogin.jsp");
				rd.forward(request, response);
			}
			else {
				
				request.setAttribute("result", result);
				ArrayList<String>stateList =b.StateList();
				request.setAttribute("statelist", stateList);
				
				RequestDispatcher rd = request.getRequestDispatcher("Customer_Login.jsp");
				rd.forward(request, response);
			}
			
			 
		}
		
		else if(action.contains("customerlogin")) {
			String res="false";
			request.setAttribute("res", res);
			RequestDispatcher rd=request.getRequestDispatcher("CustomerLogin.jsp");
			rd.forward(request, response);
		}
		
	}

}
