<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../common/10_header.jsp"></jsp:include>

<jsp:include page="../common/20_nav.jsp"></jsp:include>
<link rel="stylesheet"
	href="/resources/f-instagram-master/css/edit.css?ver=1">
<div id="main_container">

	<div class="post_form_container">
		<div class="row">
			<jsp:include page="../common/80_editnav.jsp"></jsp:include>

			<div class="col-sm-8 ">
				<form class="mt-5 mr-3" method="post">
					<div class="input-group mb-5">
						<div class="input-group-prepend">
							<span class="input-group-text">닉네임</span>
						</div>
						<input type="text" class="form-control" value="${uvo.nickname }"
							name="nickname" id="nick_input">
							<input type="text" value="${uvo.nickname }" hidden="" id="login_nick">
						<span class="nick_check_fail form-control"> 중복됩니다!!</span> <span
						class="nick_check_success form-control"> 사용가능 합니다!!</span>
					</div>
					
					<div class="input-group mb-5">
						<div class="input-group-prepend">
							<span class="input-group-text">이메일</span>
						</div>

						<div class="form-control">
							<p>${uvo.email }(수정불가)</p>
						</div>
						<input type="email" value="${uvo.email }" name="email" hidden="">
					</div>
					<div class="input-group mb-5">
						<div class="input-group-prepend">
							<span class="input-group-text">&nbsp 성별 &nbsp </span>
						</div>
						<div class="form-control">
							<input type="radio" name="ismen" required="required" value="1"
								style="width: auto;"
								<c:if test="${uvo.ismen == 1 }">checked="checked" </c:if>>

							<label for="mamale">male</label> <input type="radio" name="ismen"
								required="required" value="0" style="width: auto;"
								<c:if test="${uvo.ismen != 1 }">checked="checked" </c:if>>
							<label for="female">female</label>
						</div>
					</div>
					<div class="input-group mb-5">
						<div class="input-group-prepend">
							<span class="input-group-text">인삿말</span>
						</div>
						<textarea class="form-control" rows="4" id="comment"
							name="usercomment">${uvo.usercomment }</textarea>
					</div>

					<button type="submit" class="btn btn-primary btn-block">수정</button>

				</form>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$("#nick_input").on("keyup", function() {
		let nickVal = $("#nick_input").val();
		let loginnick = $("#login_nick").val();
		$('#submit_btn').attr('disabled', false);
		console.log("login>>>"+loginnick);
		$.ajax({
			url : "/user/check/nick",
			type : "post",
			data : {
				nickname : nickVal
			}

		}).done(function(e) {
			console.log(e);
			if ((e == "0" && nickVal != "") ||  nickVal === loginnick) {
				console.log("성공");
				$('.nick_check_success').css("display", "inline-block");
				$('.nick_check_fail').css("display", "none");

			} else {
				$('.nick_check_success').css("display", "none");
				$('.nick_check_fail').css("display", "inline-block");
				console.log("실패");
				$('#submit_btn').attr('disabled', true);
			}

		});

	});
</script>




<jsp:include page="../common/90_footer.jsp"></jsp:include>

