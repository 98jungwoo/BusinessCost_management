package woo.cost.mgmt.login.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class LoginDTO {

	private String userID;
	private String password;
	private boolean serCookie;
	
}
