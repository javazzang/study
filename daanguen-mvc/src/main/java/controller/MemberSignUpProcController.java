package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import dao.MemberDaoImpl;
import service.MemberService;
import service.MemberServiceImpl;
import vo.MemberVo;

public class MemberSignUpProcController extends HttpServlet {

	private MemberService memberService = null;
	
	//-- 기본생성자
	public MemberSignUpProcController() {
		
		this.memberService = MemberServiceImpl.getMemberService();
		System.out.println("MemberSignUpProcController 생성");
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		
		//1. 사용자의 입력값을 받습니다.
		String userEmail = request.getParameter("userEmail"); // 회원아이디
		String userName = request.getParameter("userName"); // 회원명
		String userPwd = request.getParameter("userPwd"); // 회원비밀번호
		String userPwdConfirm = request.getParameter("userPwdConfirm"); // 회원비밀번호 확인(DB안들어감)		
		
		//2. Vo 객체를 생성합니다.
		MemberVo member = new MemberVo();
		member.setUserName(userName);
		member.setUserEmail(userEmail);
		member.setUserPwd(userPwd);		
		
		//3. Service 실행
		Map<String, Object> result = memberService.registUser(member);
		
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("alert('"+ result.get("message")  +"');");		
		
		
		//-- 가입 실패일때
		if(result.get("result").toString().equals("false")) {
			out.println("history.back();");
		} else { 		//-- 가입 성공
			out.println("location.href='/signin.jsp';");			
		}
		
		out.println("</script>");
		out.flush();
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}		
	
}
