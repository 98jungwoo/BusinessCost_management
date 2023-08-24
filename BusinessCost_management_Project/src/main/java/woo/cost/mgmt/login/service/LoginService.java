package woo.cost.mgmt.login.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import woo.cost.mgmt.admin.model.AdminDTO;

public interface LoginService {

	//로그인을 실행하기 위한 메서드
	public AdminDTO login(AdminDTO adminDTO, HttpServletRequest request, HttpServletResponse response);

	//로그아웃메서드
	public void AdminDTO(HttpServletRequest request, HttpServletResponse response);
}
