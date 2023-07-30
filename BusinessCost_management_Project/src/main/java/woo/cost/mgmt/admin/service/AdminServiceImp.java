package woo.cost.mgmt.admin.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import woo.cost.mgmt.admin.model.AdminDAO;
import woo.cost.mgmt.admin.model.AdminDTO;

@Service
public class AdminServiceImp implements AdminService{

	//private static final Logger logger = LoggerFactory.getLogger(AdminServiceImp.class);
	private final AdminDAO adminDAO;
	
	@Autowired
	public AdminServiceImp(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}
	
	//담당자의 정보모두보기 메서드
	@Override
	public List<AdminDTO> adminSelectAll(String company) {
		// TODO Auto-generated method stub
		return null;
	}


	//담당자의 정보상세확인 메서드
	@Override
	public void adminSelectDetail(AdminDTO adminDTO) {
		// TODO Auto-generated method stub
		
	}

	//담당자 회원가입 메서드
	@Override
	public void adminInsert(AdminDTO adminDTO) {
		// TODO Auto-generated method stub
		
	}

	//회원정보 수정 메서드
	@Override
	public void adminUpdate(AdminDTO adminDTO) {
		// TODO Auto-generated method stub
		
	}

}
