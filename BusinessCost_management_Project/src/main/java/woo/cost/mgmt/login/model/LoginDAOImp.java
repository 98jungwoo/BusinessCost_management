package woo.cost.mgmt.login.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import woo.cost.mgmt.admin.model.AdminDTO;

@Repository
@RequiredArgsConstructor
public class LoginDAOImp implements LoginDAO {

		private static final Logger logger = LoggerFactory.getLogger(LoginDAOImp.class);
		
		@Autowired
		private final SqlSessionTemplate sqlsessionTemplate;
	
	//로그인을 실행하기 위한 메서드
	@Override
	public AdminDTO login(LoginDTO loginDTO) {
		logger.info("■■■■■■■■■ LoginDAOImp");
		return sqlsessionTemplate.selectOne("woo.cost.mgmt.admin.model.adminDTO.login", loginDTO);
	}

}
