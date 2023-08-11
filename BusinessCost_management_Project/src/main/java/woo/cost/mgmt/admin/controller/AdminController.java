package woo.cost.mgmt.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.RequiredArgsConstructor;
import woo.cost.mgmt.admin.model.AdminDTO;
import woo.cost.mgmt.admin.service.AdminServiceImp;

@Controller
@RequiredArgsConstructor
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	public final AdminServiceImp adminServiceImp;

	// 담당자의 정보모두보기 메서드(String company)
	@GetMapping("/AdminSelectAll")
	public String adminSelectAll(Model model, AdminDTO adminDTO) {
		logger.info("■■■■■■AdminController ■■■■■■ adminSelectAll 가 잘 들어왔나" + "■■■■■■");
		model.addAttribute("adminList", adminServiceImp.adminSelectAll(adminDTO.getCompany()));

		// 담당자 인원 카운트

		model.addAttribute("adminCount", adminServiceImp.adminCount());
		logger.info("■■■■■■AdminController ■■■■■■ adminSelectAll-adminCount 가 잘 들어왔나" + "■■■■■■");
		return "./admin/admin_select_view";
	}

	// 담당자의 정보상세확인 메서드
	@GetMapping("/AdminSelectDetail")
	public String adminSelectDetail(Model model, AdminDTO adminDTO) {
		
		/* 디테일은 모델이없으면 값이 보여지지 않는다.why? -> 단일 값을 조회하여 반환하는 경우일 때, 그 값을 모델에 담아서 뷰로 전달해야
		      하기 때문에 꼭 모델을 써야한다. */
		/* ㄴ 디테일에서 모델을 꼭 써야지만 값이 넘어가는 이유가 서비스랑 DAO에서 매개변수가 userID이기 때문이야(가지고 있는 값이 userID이기
			  때문에) 만약 매개변수가 DTO면 모델 안써줘도 되는거야 */
		model.addAttribute("adminDTO", adminServiceImp.adminSelectDetail(adminDTO.getUserID()));
		return "./admin/admin_select_detail_view";
	}

	// 담당자 회원가입 메서드
	@GetMapping("/AdminInsert")
	public String adminInsert() {
		logger.info("■■■■■■AdminController ■■■get■■■ adminInsert 가 잘 들어왔나" + "■■■■■■");
		return "./admin/admin_insert";
	}

	// 담당자 회원가입 메서드
	@PostMapping("/AdminInsert")
	public String adminInsert(Model model, AdminDTO adminDTO) {
		adminServiceImp.adminInsert(adminDTO);
		logger.info("■■■■■■AdminController ■■■Post■■■ adminInsert 가 잘 들어왔나" + "■■■■■■");
		return "./admin/admin_insert_view";
	}

	// 담당자 정보 수정 메서드
	@GetMapping("/AdminUpdate")
	public String adminUpdate(Model model, AdminDTO adminDTO) {
		logger.info("■■■■■■AdminController ■■■Get■■■ adminUpdate 가 잘 들어왔나" + "■■■■■■");
		model.addAttribute("adminDTO", adminServiceImp.adminSelectDetail(adminDTO.getUserID()));
		return "./admin/admin_update";
	}

	// 담당자 정보 수정 메서드
	@PostMapping("/AdminUpdate")
	public String adminUpdate(AdminDTO adminDTO) {
		logger.info("■■■■■■AdminController ■■■Post■■■ adminUpdate 가 잘 들어왔나" + "■■■■■■");
		adminServiceImp.adminUpdate(adminDTO);
		return "./admin/admin_update_view";
	}

//	@GetMapping("/IdCheck")
//	public String idCheck(Model model, AdminDTO adminDTO) {
//		logger.info(
//				"AdminController ■■■■■■ IdCheck 가 잘 들어왔나" + "■■■■■■" + adminServiceImp.idCheck(adminDTO.getUserID()));
//
//		int result = adminServiceImp.idCheck(adminDTO.getUserID());
//
//		model.addAttribute("result", result);
//		logger.info("AdminController ■■■■■■ IdCheck result 가 잘 들어왔나" + "■■■■■■" + result);
//		return "./admin/admin_insert";
//	}
	
	@PostMapping("/IdCheck")
	@ResponseBody
	public String idCheck(Model model, @RequestBody String filterJSON, HttpServletResponse response) throws Exception {
		JSONObject resObject= new JSONObject();
		
		try {
			ObjectMapper mapper = new ObjectMapper();
			AdminDTO adminDTO = (AdminDTO) mapper.readValue(filterJSON, new TypeReference<AdminDTO>() {
			});
		
		int idCheck = adminServiceImp.idCheck(adminDTO);
		logger.info("AdminController ■■■■■■ IdCheck idcheck 가 잘 들어왔나" + "■■■■■■" + idCheck);
		
		resObject.put("res", "ok");
		resObject.put("idCheck", idCheck); //idCheck라는 key에는 1 or 0 이 담긴다. 매퍼에서 그렇게 결과가 출력됨
		
		} catch (Exception e) {
			System.out.println(e.toString());
			// idCheck가 1 or 0이 아니면  resObject에  {"res":"error"} 라는게 담긴다.
			resObject.put("res", "error");
		}
		
		// resObject.put("idCheck", idCheck); resObject에 idCheck 값을 넣었기 때문에 로그로 찍어보는건 resObject이걸 찍어보는거야
		logger.info("AdminController ■■■■■■ IdCheck메서드에서 idCheck확인하려고 resObject 확인해본거임" + resObject);
		response.setContentType("text/html: charset = UTF-8");
		PrintWriter printWriter = response.getWriter();
		printWriter.print(resObject);
		
		return null;
	}
}