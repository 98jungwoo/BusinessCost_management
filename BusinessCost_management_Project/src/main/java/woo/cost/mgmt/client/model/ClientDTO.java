package woo.cost.mgmt.client.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class ClientDTO {

	//tbl_clientMember
	private int clientNum; //참여자 번호
	private String clientName; //참여자명
	private String clientBirthday; //참여자생년월일
	private String participantStatus; //참여 상태
	private int totalIndividualSalary; //개별 총 임금
	private int totalclients; //참여자 총 인원
	private int businessType; // 사업종류
	private int adminName; // 담당자 이름
	private String remarks; // 비고
	
	//tbl_clientMember
	private int usedClientWages; //1인 지급 임금
	private int usedMonth; // 지급월

}
