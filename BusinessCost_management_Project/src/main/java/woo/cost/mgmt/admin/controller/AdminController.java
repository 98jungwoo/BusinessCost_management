package woo.cost.mgmt.admin.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.RequiredArgsConstructor;
import woo.cost.mgmt.admin.model.AdminDTO;
import woo.cost.mgmt.admin.service.AdminServiceImp;

@Controller
@RequiredArgsConstructor
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	public final AdminServiceImp adminServiceImp;
	
	//담당자의 정보모두보기 메서드(String company)
	public String adminSelectAll(Model model, AdminDTO adminDTO) {
		return null;
	}
	
	//담당자의 정보상세확인 메서드
	public String adminSelectDetail(Model model, AdminDTO adminDTO) {
		return null;
	}
	
	//담당자 회원가입 메서드
	@GetMapping("/adminInsert")
	public String adminInsert() {
		return null;
	}
	
	//담당자 회원가입 메서드
	@PostMapping("/adminInsert")
	public String adminInsert(AdminDTO adminDTO) {
		return null;
	}
	
	//회원정보 수정 메서드
	@GetMapping("/adminUpdate")
	public String adminUpdate(Model model,AdminDTO adminDTO) {
		return null;
	}
	
	//회원정보 수정 메서드
	@PostMapping("/adminUpdate")
	public String adminUpdate(AdminDTO adminDTO) {
		return null;
	}
	
}
