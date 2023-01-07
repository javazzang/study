package dao;

import vo.MemberVo;

public interface MemberDao {

	// 회원 insert to DB (Table Members)
	int insertMember(MemberVo member) throws Exception;
	
	// 회원 select 이유는 로그인할때.
	boolean loginUser(MemberVo member) throws Exception;
	
	// 회원 가입시 중복아이디 체크
	boolean checkUserDuplicated(MemberVo member) throws Exception;
	
	
}
