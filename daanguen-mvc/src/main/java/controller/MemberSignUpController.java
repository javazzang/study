package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// MVC Type 2
// signup.jsp 를 view로 하는 Controller (화면만 보여주는 Controller)
public class MemberSignUpController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Calling doGet");
		
		//MVC2 에서는 보안상 노출되지 말아야할 View를 WEB-INF 디렉토리 안에 숨긴다.
		//브라우저 직접접근 ( ex http://localhost:8080/WEB-INF/index.jsp - 404 file not found )
//		RequestDispatcher dis = request.getRequestDispatcher("signup.jsp");
		RequestDispatcher dis = request.getRequestDispatcher("/WEB-INF/signup.jsp");
		dis.forward(request, response);
	}		
	
}
