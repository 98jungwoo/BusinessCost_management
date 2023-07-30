package woo.cost.mgmt.businessCost.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.RequiredArgsConstructor;
import woo.cost.mgmt.businessCost.model.BusinessCostDTO;
import woo.cost.mgmt.businessCost.service.BusinessCostServiceImp;

@Controller
@RequiredArgsConstructor
public class BusinessCostCostroller {
	
	private static final Logger logger = LoggerFactory.getLogger(BusinessCostCostroller.class);
	
	@Autowired
	private final BusinessCostServiceImp businessCostServiceImp;

	//처음 사용할때는 사업명, 참여인원, 총 사업비 작성 메서드
	@GetMapping("businessCostTotalInsert")
	public String businessCostTotalInsert() {
		return null;
	}
	@PostMapping("businessCostTotalInsert")
	public String businessCostTotalInsert(BusinessCostDTO businessCostDTO) {
		return null;
	}
	
	//총 사업비 수정하는 메서드
	@GetMapping("businessCostTotalUpdate")
	public String businessCostTotalUpdate(Model model,BusinessCostDTO businessCostDTO) {
		return null;
	}
	@PostMapping("businessCostTotalUpdate")
	public String businessCostTotalUpdate(BusinessCostDTO businessCostDTO) {
		return null;
	}
	
	//처음시작할때 총사업비를 입력한 후 비교를 위해 확인 + 인댁스 화면에서 전체내용 확인하는 메서드
	@GetMapping("businessCostselectAll")
	public String businessCostselectAll(BusinessCostDTO businessCostDTO) {
		//인댁스 화면으로 가게하기
		return null;
	}
	
	//처음시작할때 각각 세부사업비내용을 입력하는 메서드
	@GetMapping("businessCostDetailUpdate")
	public String businessCostDetailUpdate(Model model, BusinessCostDTO businessCostDTO) {
		return null;
	}
	@PostMapping("businessCostDetailUpdate")
	public String businessCostDetailUpdate(BusinessCostDTO businessCostDTO) {
		return null;
	}
	
	//월별 사용한 사업비 내역 확인하는 메서드(기본은 0원으로 보여짐)
	@GetMapping("monthUsedSelect")
	public String monthUsedSelect() {
		//여기서 사업종류가 뭔지 입력받는창으로 넘어가기
		return null;
	}
	@PostMapping("monthUsedSelect")
	public String monthUsedSelect(BusinessCostDTO businessCostDTO) {
		return null;
	}
	
	//해당월 사용한 사업비 입력하는 메서드
	@GetMapping("monthUsedUpdate")
	public String monthUsedUpdate(Model model, BusinessCostDTO businessCostDTO) {
		//해당 값이 있으면 인풋칸에 보여지게하고, 없으면 그냥 빈칸으로 뜨게 하기
		return null;
	}
	@PostMapping("monthUsedUpdate")
	public String monthUsedUpdate(BusinessCostDTO businessCostDTO) {
		return null;
	}
	
}
