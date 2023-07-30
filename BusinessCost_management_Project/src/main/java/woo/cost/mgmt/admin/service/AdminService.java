package woo.cost.mgmt.admin.service;

import java.util.List;

import woo.cost.mgmt.admin.model.AdminDTO;

public interface AdminService {

	//담당자의 정보모두보기 메서드
	List<AdminDTO> adminSelectAll(String company);
	
	//담당자의 정보상세확인 메서드
	void adminSelectDetail(AdminDTO adminDTO);
	
	//담당자 회원가입 메서드
	void adminInsert(AdminDTO adminDTO);
	
	//회원정보 수정 메서드
	void adminUpdate(AdminDTO adminDTO);
	
}
