package shop.javac.springmvcweb.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import shop.javac.springmvcweb.dao.MemberDao;
import shop.javac.springmvcweb.vo.MemberVo;

@Controller
public class MainController {
	
	@Autowired
	private MemberDao memberDao;      // DI (Dependency Injection)

	@GetMapping(value = {"","/"})
	@ResponseBody
	public List<MemberVo> index(@RequestParam("userNo") int userNo) {
		List<MemberVo> result = memberDao.getMemberList(userNo);
		
		MemberVo vo = new MemberVo();
		vo.setUserName("하악하악" + userNo);
		vo.setUserEmail("abc@naver.com" + userNo);
		vo.setUserPwd("12345" + userNo);		
		
		int affectedRows = memberDao.setMember(vo);
		result.add(vo); // --새로 추가한 사람.
		
		return result;
	}
	
	@RequestMapping("index2.do")
	@ResponseBody
	public String index2() {
		return "하악하악";
	}	
	
	@GetMapping("/main.do")
	public String main() {
		return "main";
	}
}
