package woo.cost.mgmt.businessCost.service;

import java.util.List;

import woo.cost.mgmt.businessCost.model.BusinessCostDTO;

public interface BusinessCostService {

	//처음 사용할때는 사업명, 참여인원, 총 사업비 작성 메서드
	void businessCostTotalInsert(BusinessCostDTO businessCostDTO);
	
	//총 사업비 수정하는 메서드
	BusinessCostDTO businessCostTotalUpdate(String businessType);
	
	//처음시작할때 총사업비를 입력한 후 비교를 위해 확인 + 인댁스 화면에서 전체내용 확인하는 메서드
	List<BusinessCostDTO> businessCostselectAll();
	
	//처음시작할때 각각 세부사업비내용을 입력하는 메서드
	void businessCostDetailUpdate(BusinessCostDTO businessCostDTO);
	
	//월별 사용한 사업비 내역 확인하는 메서드(기본은 0원으로 보여짐)
	List<BusinessCostDTO> monthUsedSelect(String businessType);
	
	//해당월 사용한 사업비 입력하는 메서드
	void monthUsedUpdate(BusinessCostDTO businessCostDTO);
	
}
