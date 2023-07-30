package woo.cost.mgmt.businessCost.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class BusinessCostDTO {
	
	//tbl_businessCost
	private String businessType; // 사업종류
	private int adminSalary; // 담당자 임금
	private int projectExpense; // 사업진행비
	private int clientWages; // 참여자 임금
	private int totalBusinessCost; // 총 사업비
	private int totalClients; // 참여인원
	
	//tbl_usedBusinessCost
	private String usedMonth;  // 사용한 월
	private int totalUsedAdminSalary; // 해당 월에 사용한 담당자 임금
	private int totalUsedProjectExpense; // 해당 월에 사용한 사업진행비
	private int totalUsedClientWages;	// 해당 월에 사용한 참여자 임금
	
}
