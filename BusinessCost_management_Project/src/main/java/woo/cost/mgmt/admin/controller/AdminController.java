package woo.cost.mgmt.admin.controller;

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
	@GetMapping("/AdminSelectAll")
	public String adminSelectAll(Model model, AdminDTO adminDTO) {
		logger.info("AdminController ■■■■■■ adminSelectAll 가 잘 들어왔나"+ "■■■■■■" );
		model.addAttribute("adminList", adminServiceImp.adminSelectAll(adminDTO.getCompany()));
		
		//담당자 인원 카운트
		model.addAttribute("adminCount", adminServiceImp.adminCount());
		return "./admin/admin_select_view";
	}
	
	//담당자의 정보상세확인 메서드
	@GetMapping("/AdminSelectDetail")
	public String adminSelectDetail(Model model, AdminDTO adminDTO) {
		model.addAttribute("adminDTO", adminServiceImp.adminSelectDetail(adminDTO));
		return "./admin/admin_select_detail_view";
	}
	
	//담당자 회원가입 메서드
	@GetMapping("/AdminInsert")
	public String adminInsert() {
		return null;
	}
	
	//담당자 회원가입 메서드
	@PostMapping("/AdminInsert")
	public String adminInsert(AdminDTO adminDTO) {
		return null;
	}
	
	//회원정보 수정 메서드
	@GetMapping("/AdminUpdate")
	public String adminUpdate(Model model,AdminDTO adminDTO) {
		return null;
	}
	
	//담당자 정보 수정 메서드
	@PostMapping("/AdminUpdate")
	public String adminUpdate(AdminDTO adminDTO) {
		return null;
	}
	
}
