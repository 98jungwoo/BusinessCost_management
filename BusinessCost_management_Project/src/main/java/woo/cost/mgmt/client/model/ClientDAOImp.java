package woo.cost.mgmt.client.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class ClientDAOImp implements ClientDAO{

	@Autowired
	private final SqlSessionTemplate sqlSessionTemplate;

	//참여자 정보 전체보기 메서드
	@Override
	public List<ClientDTO> clientSelectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	//참여자 개인 정보 확인(및 그동안 지급한 임금 월별  확인)메서드
	@Override
	public List<ClientDTO> clientSelectDetail(int clientNum) {
		// TODO Auto-generated method stub
		return null;
	}

	//1. 참여자 등록, 2. 참여자 변경하는 메서드
	@Override
	public void clientInsert(ClientDTO clientDTO) {
		// TODO Auto-generated method stub
		
	}

	//해당월에 참여자들 지급한 임금입력하는 메서드 
	@Override
	public void UsedClientWagesInsert(ClientDTO clientDTO) {
		// TODO Auto-generated method stub
		
	}

	//참여자 활동중단할때 참여여부 수정 
	@Override
	public void participantStatusUpdate(int clientNum) {
		// TODO Auto-generated method stub
		
	}

}
