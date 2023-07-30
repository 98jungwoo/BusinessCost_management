package woo.cost.mgmt.client.service;

import java.util.List;

import woo.cost.mgmt.client.model.ClientDTO;

public interface ClientService {

	//참여자 정보 전체보기 메서드
	List<ClientDTO> clientSelectAll();
	
	//참여자 개인 정보 확인(및 그동안 지급한 임금 월별  확인)메서드
	List<ClientDTO> clientSelectDetail(int clientNum);
	
	//1. 참여자 등록(DAO와 쿼리는 clientInsert로 같음)
	/*두개를 구분짓는 이유는 clientInsert에서는 총참여자임금에서 % 총인원 해서 1인 총 임금 을 임력하는거고 
	 clientChangeInsert는 중도포기하는 사람의 총 임금을 수기로 작성해야하기 때문에 구분함*/
	void clientInsert(ClientDTO clientDTO);
	
	//2. 참여자 변경할때 입력하는 참여자등록 메서드(DAO와 쿼리는 clientInsert로 같음)
	/*두개를 구분짓는 이유는 clientInsert에서는 총참여자임금에서 % 총인원 해서 1인 총 임금 을 임력하는거고 
	 clientChangeInsert는 중도포기하는 사람의 총 임금을 수기로 작성해야하기 때문에 구분함*/
	void clientChangeInsert(ClientDTO clientDTO);
	
	//해당월에 참여자들 지급한 임금입력하는 메서드 
	void UsedClientWagesInsert(ClientDTO clientDTO);
	
	//참여자 활동중단할때 참여여부 수정 
	void participantStatusUpdate(int clientNum);
	
}
