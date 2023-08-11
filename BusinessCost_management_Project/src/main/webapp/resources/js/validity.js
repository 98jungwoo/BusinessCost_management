$(function() {
	$.validator.setDefaults({
		onkeyup : false,
		onclick : false,
		onfocusout : false,
		showErrors : function(errorMap, errorList) {
			if (this.numberOfInvalids()) { // 에러가 있으면
				alert(errorList[0].message); // 경고창으로 띄움
			}
		}
	});
	$.validator.addMethod("regex", function(value, element, regexpr) {
		return regexpr.test(value);
	});
	// JSON 형식으로 유효성 검사의 규칙을 지정한다.
	// 특수문자 / 문자 / 숫자 포함 형태의 8~15자리 이내의 암호 정규식
	// /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
	// 핸드폰 정규식 /^\d{2,3}-\d{3,4}-\d{4}$/
	$("#signupForm").validate({
		// 유효성 검사에서 제외한다.
		ignore : [],
		// 검사할 필드와 검사 항목을 나열한다.
		rules : {

			userID : {
				required : true,
				// 최소길이를 지정한다.
				minlength : 4,
				regex : /^[0-9|a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]*$/
			},

			idCheck : {
				/* required : true */
				required : function() {
					return $("#userID_yn").val() !== 'Y'
				}
			},

			password : {
				required : true,
				minlength : 4,
				// 최대길이를 지정한다.
				maxlength : 8
			},

			adminName : {
				required : true,
				regex : /^[0-9|a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]*$/
			},

			adminBirthday : {
				required : true
			},

			adminPhonenum : {
				required : true,
				regex : /^01([0|1|6|7|8|9]?)([0-9]{3,4})([0-9]{4})$/
			},

			company : {
				required : true,
				regex : /^[0-9|a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]*$/
			},
			jobManager : {
				required : true
			},
			businessType : {
				required : true
			}
		},
		// 검사를 충족하지 못하면 표시될 메시지를 나열한다.
		messages : {
			userID : {
				required : "아이디를 입력하세요.",
				minlength : "최소 {0} 글자입니다.",
				regex : "공백이나 특수문자를 제거하세요."
			},
			idCheck : {
				required : "아이디 중복을 확인하세요.",
			},
			password : {
				required : "비밀번호를 입력하세요.",
				minlength : "최소 {0} 글자입니다.",
				maxlength : "최대 {0} 글자입니다."
			},
			adminName : {
				required : "이름을 입력하세요",
				regex : "공백이나 특수문자를 제거하세요."
			},

			adminBirthday : {
				required : "생일을 입력하세요."
			},

			adminPhonenum : {
				required : "전화번호를 입력하세요.",
				regex : "특수문자나 공백을 제거하세요."
			},
			company : {
				required : "회사명을 입력하세요",
				regex : "공백이나 특수문자를 제거하세요."
			},
			jobManager : {
				required : "일자리담당여부를 선택하세요."
			},
			businessType : {
				required : "담당사업을 선택하세요."
			}
		}
	});
});
/*
 * $(function() { $("#signupForm").submit(function() { if ($("#idCheck").val() ==
 * 0) { alert("아이디 중복을 확인하세요."); return false; } }); });
 */

// 텍스트 입력창
$(function() {
	$("#checkForm").submit(function() {
		if (!$("#subject").val()) {
			alert("제목을 입력하세요.");
			$("#subject").focus();
			return false;
		}
		var content = CKEDITOR.instances['content'].getData();
		if (content == '' || content.length == 0) {

			alert("내용을 입력하세요.");
			$("#content").focus();
			return false;
		}

	});
	if (typeof CKEDITOR != 'undefined') {
		$('form')
				.on(
						'reset',
						function(e) {
							if ($(CKEDITOR.instances).length) {
								for ( var key in CKEDITOR.instances) {
									var instance = CKEDITOR.instances[key];
									if ($(instance.element.$).closest('form')
											.attr('content') == $(e.target)
											.attr('content')) {
										instance
												.setData(instance.element.$.defaultValue);
									}
								}
							}
						});
	}

});
