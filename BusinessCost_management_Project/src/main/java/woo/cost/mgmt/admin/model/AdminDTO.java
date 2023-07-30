package woo.cost.mgmt.admin.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class AdminDTO {

	//tbl_adminMember
	private int adminNum; // 담당자 번호
	private String adminName; // 담당자 이름
	private String adminBirthday; // 담당자 생년월일
	private String jobManager; // 일자리 담당
	private String adminPhonenum; //담당자 핸드폰 번호
	private String userID; //아이디
	private String password; //비밀번호
	private String businessType; //사업종류 
	private String company; // 회사
	
}
