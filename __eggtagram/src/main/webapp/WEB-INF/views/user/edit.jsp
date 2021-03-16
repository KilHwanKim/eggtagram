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
				<form class="mt-5 mr-3">
					<div class="input-group mb-5">
						<div class="input-group-prepend">
							<span class="input-group-text">닉네임</span>
						</div>
						<input type="text" class="form-control" value="${login.nickname }" >
					</div>
					<div class="input-group mb-5">
						<div class="input-group-prepend">
							<span class="input-group-text">이메일</span>
						</div>
						<input type="text" class="form-control">
					</div>
					<div class="input-group mb-5">
						<div class="input-group-prepend">
							<span class="input-group-text">&nbsp  성별 &nbsp  </span>
						</div>
						<input type="text" class="form-control">
					</div>
					<div class="input-group mb-5">
						<div class="input-group-prepend">
							<span class="input-group-text">인삿말</span>
						</div>
						<textarea class="form-control" rows="4" id="comment"></textarea>
					</div>
					
					<button type="button" class="btn btn-primary btn-block">Full-Width Button</button>
					
				</form>
			</div>
		</div>
	</div>
</div>




<jsp:include page="../common/90_footer.jsp"></jsp:include>

