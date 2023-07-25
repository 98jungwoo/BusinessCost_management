$(function() {
	$("input[name='attachedfile']").change(function() {
		var str = $(this).val();
		// 파일명을 축출하여 할당한다.
		var fileName = str.split('\\').pop().toLowerCase();
		checkFileName(fileName);
	});
});
function checkFileName(str) {
	// 파일 확장자를 축출하여 할당한다.
	var extension = str.split('.').pop().toLowerCase();
	// 배열에 확장자가 있는지 검사하고 배열 안의 확장자가 아니면 false를 반환한다.
	if ($.inArray(extension, [ 'jpg', 'png', 'jpeg', 'gif' ]) == -1) {
		alert(extension + '파일은 업로드 하실 수 없습니다.');
		// 파일명을 다시 지운다.
		$("#attachedfile").val("");
		return;
	}
	// 파일명에 공백문자와 특수문자를 정규식으로 검사한다.
	var pattern = /[\s\{\}\/?,;:|*~`!^\+<>@\#$%&\\\=\'\"]/;
	if (pattern.test(str)) {
		alert('파일명에 공백문자와 특수문자를 제거해주세요.');
		$("#attachedfile").val("");
		return;
	}
}