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
	$("#signupForm")
	  .validate(
	    {
	     // 유효성 검사에서 제외한다.
	     ignore : [],
	     // 검사할 필드와 검사 항목을 나열한다.
	     rules : {
	      name : {
	       required : true,
	       regex : /^[0-9|a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]*$/
	      },
	      age : {
	       // 필수 여부를 지정한다.
	       required : true,
	       // 숫자 입력을 지정한다.
	       digits : true,
	       maxlength : 3
	      },
	      id : {
	       required : true,
	       // 최소길이를 지정한다.
	       minlength : 4,
	       regex : /^[0-9|a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]*$/
	      },
	      idCheck : {
		      required : true
	      },
	      password : {
	       required : true,
	       minlength : 4,
	       // 최대길이를 지정한다.
	       maxlength : 8
	      },
	      pwdre : {
	       required : true,
	       equalTo : "#password"
	      },
	      email : {
	       required : true,
	       email : true,
	       regex : /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/
	      },

	      gender : {
		      required : true
	      },

	      birthday : {
		      required : true
	      },
	      keyword : {
		      required : true
	      }
	     },
	     // 검사를 충족하지 못하면 표시될 메시지를 나열한다.
	     messages : {
	      name : {
	       required : "이름을 입력하세요",
	       regex : "공백이나 특수문자를 제거하세요."
	      },
	      age : {
	       required : "나이를 입력하세요.",
	       digits : "숫자로만 입력하세요.",
	       maxlength : "최대 {0} 숫자입니다."
	      },
	      id : {
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
	      pwdre : {
	       required : "비밀번호를 확인하세요.",
	       equalTo : "비밀번호가 틀립니다."
	      },
	      email : {
	       required : "이메일을 입력하세요.",
	       email : "이메일 형식을 확인하세요.",
	       regex : "이메일 형식을 확인하세요."
	      },
	      gender : {
		      required : "성별을 선택하세요."
	      },
	      birthday : {
		      required : "생일을 입력하세요."
	      },
	      keyword : {
		      required : "검색어를 입력하세요."
	      }

	     }
	    });

});
$(function() {
	$("#signupForm").submit(function() {
		if ($("#idCheck").val() == 0) {
			alert("아이디 중복을 확인하세요.");
			return false;
		}
	});
});
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
		$('form').on(
		  'reset',
		  function(e) {
			  if ($(CKEDITOR.instances).length) {
				  for ( var key in CKEDITOR.instances) {
					  var instance = CKEDITOR.instances[key];
					  if ($(instance.element.$).closest('form').attr('content') == $(e.target)
					    .attr('content')) {
						  instance.setData(instance.element.$.defaultValue);
					  }
				  }
			  }
		  });
	}

});
