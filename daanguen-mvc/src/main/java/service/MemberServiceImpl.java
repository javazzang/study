package service;

import java.util.HashMap;
import java.util.Map;

import dao.MemberDao;
import dao.MemberDaoImpl;
import vo.MemberVo;

public class MemberServiceImpl implements MemberService {

	private MemberDao memberDao = new MemberDaoImpl();
	
	private static MemberService memberService = null;
	
	public static MemberService getMemberService() {
		if(memberService == null) {
			memberService = new MemberServiceImpl();
		}
		return memberService;
	}
	
	/*
	public MemberServiceImpl() {
		this.memberDao = MemberDaoImpl.getMemberDao();
	}*/
	
	//회원가입
	@Override
	public Map<String, Object> registUser(MemberVo member) {
		
		int result = 0;
		Map<String, Object> resultMessage = new HashMap<String,Object>();
		resultMessage.put("result", false);			// 메소드가 실행된 결과값 (성공 true, 실패면 false)
		resultMessage.put("message", "");			// 결과 메세지 ex) 성공하였습니다.
		resultMessage.put("resultObject", null); 	// 결과로 전달된 Object ex) MemberVo ..
		
		try {
			
			//-- checkUserDuplicated 메서드로 아이디(이메일)중복확인
			//-- true 중복 / false 중복아님
			if(!memberDao.checkUserDuplicated(member)) {
				result = memberDao.insertMember(member);
				if(result > 0) {
					resultMessage.put("result", true);
					resultMessage.put("message", "회원가입이 완료되었습니다.");
					resultMessage.put("resultObject", member);
				} else {
					resultMessage.put("result", false);
					resultMessage.put("message", "회원가입이 실패하였습니다.");
					resultMessage.put("resultObject", member);					
				}
				
				
			} else { // 아이디 중복 메세지를 전달해야 합니다.
				resultMessage.put("result", false);
				resultMessage.put("message", "중복된 아이디가 존재합니다.");
				resultMessage.put("resultObject", member);				
			}
		} catch(Exception ex) {
			resultMessage.put("result", false);
			resultMessage.put("message", "회원가입중 서버에러가 발생하였습니다.");
			resultMessage.put("resultObject", member);				
		}
		
		return resultMessage;
	}

	@Override
	public Map<String, Object> loginUser(MemberVo member) {

		Map<String, Object> resultMessage = new HashMap<String,Object>();		
		resultMessage.put("result", false);			// 메소드가 실행된 결과값 (성공 true, 실패면 false)
		resultMessage.put("message", "");			// 결과 메세지 ex) 성공하였습니다.
		resultMessage.put("resultObject", null); 	// 결과로 전달된 Object ex) MemberVo ..
		
		try {
			boolean isLoginSucc = memberDao.loginUser(member);
			if(isLoginSucc) {
				resultMessage.put("result", true);			// 메소드가 실행된 결과값 (성공 true, 실패면 false)
				resultMessage.put("message", "로그인에 성공하였습니다.");			// 결과 메세지 ex) 성공하였습니다.
				resultMessage.put("resultObject", member); 	// 결과로 전달된 Object ex) MemberVo ..				
			} else {
				resultMessage.put("result", false);			// 메소드가 실행된 결과값 (성공 true, 실패면 false)
				resultMessage.put("message", "로그인에 실패하였습니다.");			// 결과 메세지 ex) 성공하였습니다.
				resultMessage.put("resultObject", member); 	// 결과로 전달된 Object ex) MemberVo ..					
			}
			
		} catch(Exception ex) {
			resultMessage.put("result", false);			// 메소드가 실행된 결과값 (성공 true, 실패면 false)
			resultMessage.put("message", "로그인중 오류가 발생하였습니다.");			// 결과 메세지 ex) 성공하였습니다.
			resultMessage.put("resultObject", member); 	// 결과로 전달된 Object ex) MemberVo ..
			System.out.println(ex.getMessage());
		}
		
		return resultMessage;
	}

}
