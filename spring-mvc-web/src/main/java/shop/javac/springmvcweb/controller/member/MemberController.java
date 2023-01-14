package shop.javac.springmvcweb.controller.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import shop.javac.springmvcweb.service.member.MemberService;
import shop.javac.springmvcweb.vo.MemberVo;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;

	// -- 화면 출력
	@RequestMapping("/member/memberRegister.do")
	public String memberRegister(Model model, MemberVo insertMemberVo) {

		// -- WEB-INF/jsp/member/memberRegist.jsp
		// -- prefix : WEB-INF/jsp/
		// -- suffix : .jsp

		// 1번 방법 request 객체 이용
		// 메소드 인자에 HttpServletRequest request 추가
//		String userName = request.getParameter("userName");
//		String userPwd = request.getParameter("userPwd");
//		String userEmail = request.getParameter("userEmail");
		
		// 2번 방법
		// RequetParam Annotation 을 Method 인자로 놓는 것
//		@RequestParam(value="userName", required=false) String userName,
//		@RequestParam(value="userPwd", required=false) String userPwd,
//		@RequestParam(value="userEmail", required=false) String userEmail		
		
//		if(userName != null && userEmail != null && userPwd != null) {			
//			MemberVo insertMemberVo = new MemberVo();
//			insertMemberVo.setUserEmail(userEmail);
//			insertMemberVo.setUserName(userName);
//			insertMemberVo.setUserPwd(userPwd);
//			memberService.setMember(insertMemberVo);
//		}

		if(insertMemberVo != null) memberService.setMember(insertMemberVo);
		
		//-- 입력목록 출력
		List<MemberVo> memberAllList = memberService.getMemberListAll(null);
		model.addAttribute("memberList", memberAllList);
		
		return "member/memberRegister";
		
	}
	
}
