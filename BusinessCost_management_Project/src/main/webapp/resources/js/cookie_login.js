$(function() {
	id = $.cookie("id");
	// console.log(id);
	password = $.cookie("password");
	// console.log(password);
	if (id && password) {
		$("#id").val(id);
		$("#password").val(password);
		$("#save").prop("checked", true);
	}
	$("#save").change(function() {
		if ($(this).is(":checked")) {
			if (confirm("정보가 노출될 위험이 있습니다. 정보를 저장하시겠습니까?")) {
				// 쿠키를 365일로 설정한다.
				$.cookie("id", $("#id").val(), {
				 expires : 365,
				 path : "/"
				});
				$.cookie("password", $("#password").val(), {
				 expires : 365,
				 path : "/"
				});
			}
		} else {
			$.removeCookie("id", {
				path : "/"
			});
			$.removeCookie("password", {
				path : "/"
			});
			$("#save").prop("checked", false);

		}
	});
});
