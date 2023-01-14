package shop.javac.springmvcweb.service.member;

import java.util.List;

import shop.javac.springmvcweb.vo.MemberVo;

public interface MemberService {
	List<MemberVo> getMemberList(int userNo);
	int setMember(MemberVo vo);   //insert, update 는 리턴타입이 숫자이다.
	List<MemberVo> getMemberListAll(MemberVo vo);
}
