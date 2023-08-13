package woo.cost.mgmt.login.model;

import woo.cost.mgmt.admin.model.AdminDTO;

public interface LoginDAO {

	//로그인을 실행하기 위한 메서드
	public AdminDTO login(LoginDTO loginDTO);
}
