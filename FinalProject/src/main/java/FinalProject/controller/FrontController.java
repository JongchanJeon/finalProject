package FinalProject.controller;

import FinalProject.*;
import FinalProject.action.*;
import FinalProject.model.*;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FrontController extends HttpServlet implements Servlet{
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		
		command = command.substring(command.lastIndexOf("/"));
		
		request.setCharacterEncoding("utf-8");
		ActionForward forward = null;
		Action action = null;
		
		System.out.println("command = " + command);
		
		switch(command) {
		case "/UserJoin.be":
			action = new UserJoinAction();
			break;
		case "/login.be":
			action = new LoginAction();
			break;
		case "/logout.be":
			action = new LogoutAction();
			break;
		case "/readUserInfo.be":
			action = new readUserInfoAction();
			break;
		case "/userDelete.be":
			action = new userDeleteAction();
			break;
		case "/userUpdate.be":
			action = new userUpdateAction();
			break;
		case "/insertItem.be":
			action = new insertItemAction();
			break;
		case "/readProject.be":
			action = new readProductAction();
			break;
		case "/userManagement.be":
			action = new userManagementAction();
			break;
		case "/showProduct.be":
			action = new showProductAction();
			break;
		case "/searchProduct.be":
			action = new searchProductAction();
			break;
		case "/myProducts.be":
			action = new myProductsAction();
			break;
		case "/productDelete.be":
			action = new productDeleteAction();
			break;
		case "/productUpdate.be":
			action = new productUpdateAction();
			break;
		case "/getProduct.be":
			action = new getProductAction();
			break;
		case "/getCart.be":
			action = new getCartAction();
			break;
		case "/showCart.be":
			action = new showCartAction();
			break;
		case "/point.be":
			action = new pointAction();
			break;
		case "/setPoint.be":
			action = new setPointAction();
			break;
		case "/checkId.be":
			action = new checkIdAction();
			break;
		case "/payProduct.be":
			action = new payProductAction();
			break;
		default:
			action = new DefaultAction();
		}
		try {
			forward = action.execute(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		if(forward != null) {
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			}else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
						dispatcher.forward(request, response);
			}
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
}
