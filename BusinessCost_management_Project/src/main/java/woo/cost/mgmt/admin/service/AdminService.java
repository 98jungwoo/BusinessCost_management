package woo.cost.mgmt.admin.service;

import java.util.List;

import woo.cost.mgmt.admin.model.AdminDTO;

public interface AdminService {

	//담당자의 정보모두보기 메서드
	List<AdminDTO> adminSelectAll(String company);
	
	//담당자의 정보상세확인 메서드
	AdminDTO adminSelectDetail(String userID);
	
	//담당자 회원가입 메서드
	void adminInsert(AdminDTO adminDTO);
	
	//담당자 정보 수정 메서드
	void adminUpdate(AdminDTO adminDTO);

	//담당자 인원 카운트
	int adminCount();

	//아이디 중복 체크
	int idCheck(String userID);


	
}
