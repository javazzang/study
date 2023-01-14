package shop.javac.springmvcweb.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import shop.javac.springmvcweb.vo.MemberVo;

@Mapper
public interface MemberDao {
		List<MemberVo> getMemberList(int userNo);
		int setMember(MemberVo vo);   //insert, update 는 리턴타입이 숫자이다.
		List<MemberVo> getMemberListAll(MemberVo vo);
}
