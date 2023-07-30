package woo.cost.mgmt.client.model;

import java.util.List;

public interface ClientDAO {

	//참여자 정보 전체보기 메서드
	public List<ClientDTO> clientSelectAll();
	
	//참여자 개인 정보 확인(및 그동안 지급한 임금 월별  확인)메서드
	public List<ClientDTO> clientSelectDetail(int clientNum);
	
	//1. 참여자 등록, 2. 참여자 변경하는 메서드
	public void clientInsert(ClientDTO clientDTO);
	
	//해당월에 참여자들 지급한 임금입력하는 메서드 
	public void UsedClientWagesInsert(ClientDTO clientDTO);
	
	//참여자 활동중단할때 참여여부 수정 
	public void participantStatusUpdate(int clientNum);
	
}
