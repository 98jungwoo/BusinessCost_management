$(function() {
	// 입력 양식의 데이터에 대한 유효성 검사를 하고 전송한다.
	$("#comment_form")
	  .submit(
	    function() {
		    // name 아이디를 탐색하여 속성값을 반환한다.
		    // comment 아이디를 탐색하여 속성값을 반환한다.
		    var comment = CKEDITOR.instances['comment'].getData();
		    if (!$("#name").val()) {
			    alert("이름을 입력하세요.");
			    $("#name").focus();
			    return false;
		    }

		    if (comment == '' || comment.length == 0) {

			    alert("내용을 입력하세요.");
			    $("#comment").focus();
			    return false;
		    }

		    CKEDITOR.instances['comment'].setData('');
		    // 시스템의 현재 날짜와 시각을 조회하거나 계산하기 위한 객체를 선언한다.
		    date = new Date();
		    // 4 자리수의 연도로 정보를 반환한다.
		    yy = date.getFullYear();
		    // 월로 정보를 반환하며 월의 인덱스 0부터 11까지이므로 1을 더한다.
		    mm = date.getMonth() + 1;
		    // 1~31 사이의 날짜로 정보를 반환한다.
		    dd = date.getDate();
		    today = yy + "-" + mm + "-" + dd
		    new_li = $("<p>");
		    // 선택한 요소에서 comment_item 클래스를 추가한다.
		    new_li.addClass("comment_item");
		    writer_p = $("<p>");
		    // 선택한 요소에서 writer 클래스를 추가한다.
		    writer_p.addClass("writer");
		    name_span = $("<span>");
		    // 선택한 요소에서 name 클래스를 추가한다.
		    name_span.addClass("name");
		    // name 아이디를 탐색하여 속성값으로 반환한 내용을 설정한다.
		    name_span.html("<i class='fa fa-user mr-sm-1'></i>" + $("#name").val()
		      + "님");
		    date_span = $("<span>");
		    // 현재 날짜 형식의 내용을 설정한다.
		    date_span.html("<br><i class='fa fa-clock mr-sm-1'></i>" + today + " ");
		    del_input = $("<button type='button' class='btn btn-outline-secondary btn-sm'><i class='fa  fa-trash mr-sm-1'></i>삭제 </button>");

		    // 선택한 요소에서 delete_btn 클래스를 추가한다.
		    del_input.addClass("delete_btn");
		    content_p = $("<p>");
		    // comment 아이디를 탐색하여 속성값으로 반환한 내용을 설정한다.
		    content_p.html(comment);
		    // 선택한 요소의 끝에 지정된 내용을 삽입한다.
		    writer_p.append(name_span).append(date_span).append(del_input);
		    new_li.append(writer_p).append(content_p);
		    $("#comment_list").append(new_li);
		    // name 아이디를 탐색하여 비어있는 속성값으로 반환한다.
		    $("#name").val("");
		    // comment 아이디를 탐색하여 비어있는 속성값으로 반환한다.
		    $("#comment").val("");
		    return false;
	    });
	// click 이벤트로 요소에 연속해서 원하는 이벤트를 발생시키고 $(document) 함수를 통해서 document 객체를 호출한다.
	$(document).on("click", ".delete_btn", function() {
		// 확인과 취소 두 버튼을 가지며 메시지를 지정할 수 있는 대화 상자를 띄운다.
		if (confirm("선택하신 댓글을 삭제하시겠습니까?")) {
			// 선택한 요소의 모든 부모 요소를 반환하고 제거한다.
			$(this).parents(".comment_item").remove();
		}
	});
});