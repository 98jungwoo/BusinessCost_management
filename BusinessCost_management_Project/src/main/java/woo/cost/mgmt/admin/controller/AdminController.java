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
		logger.info("■■■■■■AdminController ■■■■■■ adminSelectAll 가 잘 들어왔나"+ "■■■■■■" );
		model.addAttribute("adminList", adminServiceImp.adminSelectAll(adminDTO.getCompany()));
		
		//담당자 인원 카운트
		
		model.addAttribute("adminCount", adminServiceImp.adminCount());
		logger.info("■■■■■■AdminController ■■■■■■ adminSelectAll-adminCount 가 잘 들어왔나"+ "■■■■■■" );
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
		logger.info("■■■■■■AdminController ■■■get■■■ adminInsert 가 잘 들어왔나"+ "■■■■■■" );
		return "./admin/admin_insert";
	}
	
	//담당자 회원가입 메서드
	@PostMapping("/AdminInsert")
	public String adminInsert(Model model,AdminDTO adminDTO) {
		adminServiceImp.adminInsert(adminDTO);
		logger.info("■■■■■■AdminController ■■■Post■■■ adminInsert 가 잘 들어왔나"+ "■■■■■■" );
		return "./admin/admin_insert_view";
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
	
//	//아이디 중복 체크
//	@GetMapping("/IdCheck")
//	public String IdCheck(Model model,AdminDTO adminDTO) {
//		adminServiceImp.IdCheck(adminDTO.getUserID());
//		return null;
//	}
	
@GetMapping("/IdCheck")
	   public String idCheck(Model model, AdminDTO adminDTO) {
		logger.info("AdminController ■■■■■■ IdCheck 가 잘 들어왔나"+ "■■■■■■" + adminServiceImp.idCheck(adminDTO.getUserID()));
		
	        int result = adminServiceImp.idCheck(adminDTO.getUserID());
	        
	        model.addAttribute("result", result);
			logger.info("AdminController ■■■■■■ IdCheck result 가 잘 들어왔나"+ "■■■■■■" + result);
			return "./admin/admin_insert";
	   }
}
