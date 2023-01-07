package service;

import java.util.Map;
import vo.MemberVo;

public interface MemberService {

	//-- 회원가입 메서드
	Map<String, Object> registUser(MemberVo member);
	
	//-- 회원로그인 메서드
	Map<String, Object> loginUser(MemberVo member);
	
}
