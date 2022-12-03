package vo;

//import java.util.*;

public class CreationObjectVO {
	
	private String creationDate;
	
	//-- 기본 생성자
	//-- CreationObjectVO vo = new CreationObjectVO();
	public CreationObjectVO() {
		this.creationDate = new java.util.Date().toString();
	}
	
	//-- 생성시간 가지고 오기
	public String getCreationDate() {
		return this.creationDate;
	}
}
