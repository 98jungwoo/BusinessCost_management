package woo.cost.mgmt.client.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.RequiredArgsConstructor;
import woo.cost.mgmt.client.model.ClientDTO;
import woo.cost.mgmt.client.service.ClientServiceImp;

@Controller
@RequiredArgsConstructor
public class ClientController {

	//private static final Logger logger = LoggerFactory.getLogger(ClientController.class);
	
	@Autowired
	private final ClientServiceImp clientServiceImp;
	
	//참여자 정보 전체보기 메서드
	@GetMapping("clientSelectAll")
	public String clientSelectAll(Model model, ClientDTO clientDTO) {
		return null;
	}
	
	//참여자 개인 정보 확인(및 그동안 지급한 임금 월별  확인)메서드
	@GetMapping("clientSelectDetail")
	public String clientSelectDetail(Model model, ClientDTO clientDTO) {
		return null;
	}
	
	//1. 참여자 등록(DAO와 쿼리는 clientInsert로 같음)
	/*두개를 구분짓는 이유는 clientInsert에서는 총참여자임금에서 % 총인원 해서 1인 총 임금 을 임력하는거고 
	 clientChangeInsert는 중도포기하는 사람의 총 임금을 수기로 작성해야하기 때문에 구분함*/
	@GetMapping("clientInsert")
	public String clientInsert() {
		return null;
	}
	@PostMapping("clientInsert")
	public String clientInsert(ClientDTO clientDTO) {
		return null;
	}
	
	//2. 참여자 변경할때 입력하는 참여자등록 메서드(DAO와 쿼리는 clientInsert로 같음)
	/*두개를 구분짓는 이유는 clientInsert에서는 총참여자임금에서 % 총인원 해서 1인 총 임금 을 임력하는거고 
	 clientChangeInsert는 중도포기하는 사람의 총 임금을 수기로 작성해야하기 때문에 구분함*/
	@GetMapping("clientChangeInsert")
	public String clientChangeInsert(Model model, ClientDTO clientDTO) {
		
		//participantStatusUpdate 이거랑 같이 동작하게 하면 어떨까,,,?? 
		//변경창들어가서 , 샐랙트로 불러오고 와서 창만 보여지게한 후
		return null;
	}
	@PostMapping("clientChangeInsert")
	public String clientChangeInsert(ClientDTO clientDTO) {
		
		// 참여정보 수정하고, 새로운 참여자 등록해서 clientInsert쿼리문과 participantStatusUpdate쿼리문이 같이 동작하게하고싶음
		return null;
	}
	
	//해당월에 참여자들 지급한 임금입력하는 메서드
	@GetMapping("UsedClientWagesInsert")
	public String UsedClientWagesInsert(Model model, ClientDTO clientDTO) {
		//clientSelectAll로 참여자이름, 생년월일 불러오기
		return null;
	}
	@PostMapping("UsedClientWagesInsert")
	public String UsedClientWagesInsert(ClientDTO clientDTO) {
		//리스트로 값 저장해야하는건가,,??
		return null;
	}
	
/*	clientChangeInsert에서 같이 동작하게 수정함
	//참여자 활동중단할때 참여여부 수정 
	public String participantStatusUpdate(ClientDTO clientDTO) {
		//여기에 clientSelectDetail로 정보 불러오기?
		return null;
	}
	public String participantStatusUpdate(ClientDTO clientDTO) {
		return null;
	}
*/
}
