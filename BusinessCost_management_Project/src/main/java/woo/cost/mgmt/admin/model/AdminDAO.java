package woo.cost.mgmt.admin.model;

import java.util.List;

public interface AdminDAO {

	//담당자의 정보모두보기 메서드
	public List<AdminDTO> adminSelectAll(String company);
	
	//담당자의 정보상세확인 메서드
	public AdminDTO adminSelectDetail(String userID);
	
	//담당자 회원가입 메서드
	public void adminInsert(AdminDTO adminDTO);
	
	//담당자 정보 수정 메서드
	public void adminUpdate(AdminDTO adminDTO);

	//담당자 인원 카운트
	public int adminCount();

	//아이디 중복체크
	boolean IdCheck(String userID);


	
}
