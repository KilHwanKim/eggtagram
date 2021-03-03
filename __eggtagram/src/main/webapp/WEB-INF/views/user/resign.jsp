<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../common/10_header.jsp"></jsp:include>

<jsp:include page="../common/20_nav.jsp"></jsp:include>
<link rel="stylesheet" href="/resources/f-instagram-master/css/edit.css">
<div id="main_container">

	<div class="post_form_container">
		<div class="row">
			<jsp:include page="../common/80_editnav.jsp"></jsp:include>

			<div class="col-sm-8 ">
				<form method="post" class="post_form">

					<h1>
						<em class="text-danger">회원탈퇴</em> 를 입력해주세요
					</h1>
					<br> <input type="text" placeholder="회원탈퇴" id="resign">
					<input type="text" name="nickname" hidden="" value="${login.nickname }">
					
					<button class="btn btn-secondary" disabled="disabled" type="submit" id="submit">회원탈퇴</button>



				</form>

			</div>
		</div>
	</div>
</div>




</section>

<script>

$("#resign").on("change keyup paste",function(){
	var currval = $(this).val();
	
	if (currval =="회원탈퇴"){
		console.log(currval);
		$("#submit").removeClass("btn btn-secondary");
		$('#submit').attr('disabled', false);
		$('#submit').addClass('btn btn-danger');
	}
	else{
		$("#submit").removeClass("btn btn-danger");
		$('#submit').attr('disabled', true);
		$("#submit").addClass("btn btn-secondary");
		
		
	}
});
</script>
<jsp:include page="../common/90_footer.jsp"></jsp:include>

