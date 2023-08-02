package woo.cost.mgmt.admin.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class AdminDAOImp implements AdminDAO{

	//private static final Logger logger = LoggerFactory.getLogger(AdminDAOImp.class);
	
	@Autowired
	private final SqlSessionTemplate sqlsessionTemplate;
	
	//담당자의 정보모두보기 메서드
	@Override
	public List<AdminDTO> adminSelectAll(String company) {
		return sqlsessionTemplate.selectList("woo.cost.mgmt.admin.model.adminDTO.adminSelectAll", company);
	}

	//담당자의 정보상세확인 메서드
	@Override
	public void adminSelectDetail(AdminDTO adminDTO) {
		// TODO Auto-generated method stub
		
	}

	//담당자 회원가입 메서드
	@Override
	public void adminInsert(AdminDTO adminDTO) {
		// TODO Auto-generated method stub
		
	}

	//회원정보 수정 메서드
	@Override
	public void adminUpdate(AdminDTO adminDTO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int adminCount() {
		
		return sqlsessionTemplate.selectOne("woo.cost.mgmt.admin.model.adminDTO.adminCount");
	}
	
	

}
