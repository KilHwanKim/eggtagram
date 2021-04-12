
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<jsp:include page="../common/10_header.jsp"></jsp:include>

<jsp:include page="../common/20_nav.jsp"></jsp:include>

<link rel="stylesheet"
	href="/resources/f-instagram-master/css/profile.css?ver=1">





<section id="container">




	<div id="main_container">

		<section class="b_inner">

			<div class="hori_cont">
				<div class="profile_wrap">

					<div class="profile_img"
						<c:if test="${uvo.nickname eq login.nickname }">id="trigger2"</c:if>>
						<c:if test="${profile == '' }">
							<img src="/resources/f-instagram-master/imgs/default.jpg"
								alt="착한호랑이">

						</c:if>
						<c:if test="${profile !='' }">
							<img src="/uploads/${profile }" alt="착한호랑이">

						</c:if>




					</div>
					<form method="post" enctype="multipart/form-data" id="profile_form">
						<input type="file" hidden="" id="id_profile" name="photo">


					</form>
				</div>


				<div class="detail">
					<div class="top">
						<div class="user_name">${uvo.nickname }
							<c:if test="${!(uvo.nickname eq login.nickname) }">

								<c:forEach items="${follower_list }" var="nick">

									<c:if test="${nick == login.nickname }">

										<c:set var="flag" value="1" />
									</c:if>
								</c:forEach>


								<c:if test="${(flag eq null) }">

									<button class="btn btn-outline-primary" id="add_btn"
										data-target="${uvo.nickname }"
										data-follower="${login.nickname }">팔로우</button>
								</c:if>
								<c:if test="${(flag ne null) }">
									<button class="btn btn-outline-secondary" id="cancle_btn"
										data-target="${uvo.nickname }"
										data-follower="${login.nickname }">팔로우 취소</button>
								</c:if>
							</c:if>
						</div>




					</div>

					<ul class="middle">
						<li><span>게시물</span> ${article_count}</li>
						<li><span data-toggle="modal" data-target="#followModal">팔로워</span>
							${follower_count}</li>
						<li><span data-toggle="modal" data-target="#targetModal">팔로우</span>
							${target_count}</li>
					</ul>

					<div class="modal" id="followModal">
						<div class="modal-dialog modal-sm">
							<div class="modal-content">

								<!-- Modal Header -->
								<div class="modal-header text-center">
									<h4 class="modal-title font-weight-bold">팔로워</h4>
									<button type="button" class="close" data-dismiss="modal">&times;</button>
								</div>

								<!-- Modal body -->
								<div class="modal-body">
									<div class="container scroll_section" >
										
											<c:forEach items="${follower_list }" var="fovo">
												<div class="row">
													<div class="col-sm-3">
														<img src="/resources/f-instagram-master/imgs/thumb02.jpg"
															alt="프로필사진" width="40px" height="40px"
															class="rounded-circle">
													</div>
													<div class="col-sm-9 align-self-center">
														<a class="user_id" href="/user/profile/${fovo.follower }">${fovo.follower }</a>
													</div>

												</div>
											</c:forEach>
										
									</div>

								</div>
								<!-- Modal footer -->
								<div class="modal-footer">
									<button type="button" class="btn btn-danger"
										data-dismiss="modal">Close</button>
								</div>

							</div>
						</div>
					</div>

					<div class="modal" id="targetModal">
						<div class="modal-dialog modal-sm">
							<div class="modal-content">

								<!-- Modal Header -->
								<div class="modal-header text-center">
									<h4 class="modal-title font-weight-bold">팔로우</h4>
									<button type="button" class="close" data-dismiss="modal">&times;</button>
								</div>

								<!-- Modal body -->
								<div class="modal-body">
									<div class="container scroll_section" >
										
											<c:forEach items="${target_list }" var="fovo">
												<div class="row">
													<div class="col-sm-3">
														<img src="/resources/f-instagram-master/imgs/thumb02.jpg"
															alt="프로필사진" width="40px" height="40px"
															class="rounded-circle">
													</div>
													<div class="col-sm-9 align-self-center">
														<a class="user_id" href="/user/profile/${fovo.target }">${fovo.target }</a>
													</div>

												</div>
											</c:forEach>
										
									</div>

								</div>
								<!-- Modal footer -->
								<div class="modal-footer">
									<button type="button" class="btn btn-danger"
										data-dismiss="modal">Close</button>
								</div>

							</div>
						</div>
					</div>

					<h1></h1>
					<pre class="about">${uvo.usercomment }</pre>

				</div>
			</div>

			<div class="mylist_contents contents_container active">
				<c:forEach items="${a_list }" var="avo">
					<div class="pic">
						<a href="../../article/detail/${avo.ano}"><img
							src="/uploads/${avo.thumb }" alt=""></a>
					</div>


				</c:forEach>

			</div>







		</section>
	</div>


</section>

<script>
	$(function() {
		$(document).on("click", "#trigger2", function() {
			$("#id_profile").click();

		});
		$(document).on("change", "#profile_form", function() {
			console.log("바귐");
			$("#profile_form").submit();
		});

		$(document).on("click", "#add_btn", function() {

			let select = $(this);
			let targetVal = select.data("target");
			let followerVal = select.data("follower");
			$.ajax({
				url : "/follow/add",
				type : "post",
				data : {
					target : targetVal,
					follower : followerVal
				}
			}).done(function(e) {
				location.reload();
			});

		});
		$(document).on("click", "#cancle_btn", function() {

			let select = $(this);
			let targetVal = select.data("target");
			let followerVal = select.data("follower");
			$.ajax({
				url : "/follow/cancle",
				type : "post",
				data : {
					target : targetVal,
					follower : followerVal
				}
			}).done(function(e) {
				location.reload();

			});

		});

	});
</script>




<jsp:include page="../common/90_footer.jsp"></jsp:include>
