package woo.cost.mgmt.businessCost.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import woo.cost.mgmt.businessCost.model.BusinessCostDAO;
import woo.cost.mgmt.businessCost.model.BusinessCostDTO;

@Service
public class BusinessCostServiceImp implements BusinessCostService {

	//private static final Logger logger = LoggerFactory.getLogger(BusinessCostServiceImp.class);
	
	private final BusinessCostDAO businessCostDAO;
	
	@Autowired
	public BusinessCostServiceImp(BusinessCostDAO businessCostDAO) {
		this.businessCostDAO = businessCostDAO;
	}
	
	//처음 사용할때는 사업명, 참여인원, 총 사업비 작성 메서드
	@Override
	public void businessCostTotalInsert(BusinessCostDTO businessCostDTO) {
		// TODO Auto-generated method stub
		
	}

	//총 사업비 수정하는 메서드
	@Override
	public BusinessCostDTO businessCostTotalUpdate(String businessType) {
		// TODO Auto-generated method stub
		return null;
	}
	
	//처음시작할때 총사업비를 입력한 후 비교를 위해 확인 + 인댁스 화면에서 전체내용 확인하는 메서드
	@Override
	public List<BusinessCostDTO> businessCostselectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	//처음시작할때 각각 세부사업비내용을 입력하는 메서드
	@Override
	public void businessCostDetailUpdate(BusinessCostDTO businessCostDTO) {
		// TODO Auto-generated method stub
		
	}

	//월별 사용한 사업비 내역 확인하는 메서드(기본은 0원으로 보여짐)
	@Override
	public List<BusinessCostDTO> monthUsedSelect(String businessType) {
		// TODO Auto-generated method stub
		return null;
	}

	//해당월 사용한 사업비 입력하는 메서드
	@Override
	public void monthUsedUpdate(BusinessCostDTO businessCostDTO) {
		// TODO Auto-generated method stub
		
	}

}
