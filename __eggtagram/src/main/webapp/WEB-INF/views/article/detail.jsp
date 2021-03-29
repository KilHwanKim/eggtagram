<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<jsp:include page="../common/10_header.jsp"></jsp:include>

<link rel="stylesheet"
	href="/resources/f-instagram-master/css/detail-page.css?ver=1">










<jsp:include page="../common/20_nav.jsp"></jsp:include>

<div id="main_container">

	<section class="b_inner">

		<div class="contents_box">

			<article class="contents cont01">
				<!-- 슬라이드 -->
				<div class="img_section">




					<div id="demo" class="carousel slide" data-ride="carousel">

						<!-- Indicators -->
						<ul class="carousel-indicators">


							<c:forEach begin="0" end="${f_size }" varStatus="status">

								<c:if test="${status.first }">
									<li data-target="#demo" data-slide-to="${status.current}"
										class="active"></li>
								</c:if>
								<c:if test="${!status.first }">
									<li data-target="#demo" data-slide-to="${status.current}"></li>

								</c:if>


							</c:forEach>
						</ul>

						<!-- The slideshow -->
						<div class="carousel-inner">




							<c:forEach items="${f_list }" var="fvo" varStatus="status">

								<c:if test="${status.first }">
									<div class="carousel-item active">
										<img src="/uploads/${fvo.savedir }/${fvo.uuid }_${fvo.fname }"
											alt="" style="height: 380px">
									</div>
								</c:if>
								<c:if test="${!status.first }">
									<div class="carousel-item">
										<img src="/uploads/${fvo.savedir }/${fvo.uuid }_${fvo.fname }"
											alt="" style="height: 380px;">
									</div>
								</c:if>

							</c:forEach>
						</div>



						<!-- Left and right controls -->
						<a class="carousel-control-prev" href="#demo" data-slide="prev">
							<span class="carousel-control-prev-icon"></span>
						</a> <a class="carousel-control-next" href="#demo" data-slide="next">
							<span class="carousel-control-next-icon"></span>
						</a>
					</div>









					<div class="container pt-3">
						<h1>${avo.content }</h1>


					</div>

				</div>


				<div class="detail--right_box">

					<header class="top">
						<div class="user_container">
							<div class="profile_img">
								<c:if test="${thumb eq null }">
									<img src="/resources/f-instagram-master/imgs/default.jpg"
										alt="착한호랑이">

								</c:if>
								<c:if test="${!(thumb eq null) }">
									<img src="/uploads/${thumb }" alt="">

								</c:if>

							</div>
							<div class="user_name">
								<div class="nick_name">${avo.nickname }</div>
								<div class="country">Seoul, South Korea</div>
							</div>
						</div>


						<c:if test="${avo.nickname eq login.nickname }">
							<!-- Button to Open the Modal -->
							<div class="sprite_more_icon" data-toggle="modal"
								data-target="#delete_content"></div>


							<div class="modal fade" id="delete_content">
								<div class="modal-dialog">
									<div class="modal-content text-center">

										<div class="list-group">
											<form action="/article/delete" method="post">
												<input type="text" name="nickname" hidden=""
													value="${avo.nickname }"> <input type="number"
													name="ano" hidden="" value="${avo.ano }"> <input
													type="submit"
													class="list-group-item list-group-item-action"
													value="게시물 삭제">

											</form>

											<a href="#" class="list-group-item list-group-item-action"
												data-dismiss="modal">취소</a>
										</div>


									</div>
								</div>
							</div>
						</c:if>




					</header>

					<section class="scroll_section" style="height: 315px;">
						<c:forEach items="${c_list }" var="cvo">
							<div class="user_container-detail">
								<div class="user">
									<c:if test="${cvo.thumb != null }">
										<img src="/uploads/${cvo.thumb }" alt="user">
									</c:if>
									<c:if test="${cvo.thumb == null }">
										<img src="/resources/f-instagram-master/imgs/default.jpg"
											alt="user">
									</c:if>
								</div>
								<div class="comment">
									<a href="/user/profile/${cvo.nickname }"><span
										class="user_id">${cvo.nickname }</span></a> ${cvo.content }
									<div class="time">${cvo.regdate }</div>
									<div class="icon_wrap">
										<c:if test="${cvo.nickname eq login.nickname }">
											<div class="more_trigger" data-cno="${cvo.cno }"
												data-ano="${avo.ano }">


												<div>x</div>




											</div>
										</c:if>
										<div class="small_heart_btn">
											<div class="sprite_small_heart_icon_outline"></div>
										</div>
									</div>
								</div>
							</div>


						</c:forEach>




					</section>


					<div class="bottom_icons">
						<div class="left_icons">
							<div class="heart_btn">
								<div class="sprite_heart_icon_outline" data-name="heartbeat"></div>
							</div>
							<div>
								<div class="sprite_bubble_icon"></div>
							</div>
							<div>
								<div class="sprite_share_icon" data-name="share"></div>
							</div>
						</div>

						<div class="right_icon">
							<div class="sprite_bookmark_outline" data-name="book-mark"></div>
						</div>
					</div>

					<div class="count_likes">
						좋아요 <span class="count">2,351</span> 개
					</div>
					<div class="timer">${avo.regdate }</div>

					<div class="commit_field">
						<form action="/comment/write" method="post" id="comment_form">
							<input type="text" placeholder="댓글달기.." name="content"
								required="required"> <input type="text" hidden=""
								name="ano" value="${avo.ano }" id="ano"> <input
								type="text" hidden="" name="nickname" value="${login.nickname }"
								id="nickname"> <input class="submit" type="submit"
								value="게시">
						</form>

					</div>



				</div>


			</article>


		</div>


	</section>

</div>


<div class="del_pop">
	<div class="btn_box">
		<div class="del">삭제</div>
		<div class="cancel">취소</div>
	</div>
</div>



<script type="text/javascript">
	$(function() {
		$(document).on("click", ".heart_btn", function(e) {
			let anoval = $("#ano").val();
			let nicknameval = $("#nickname").val();

			if ($(this).children('div').hasClass("on") === true) {

				$(this).children('div').removeClass("on");
				$.ajax({
					url :"/like/cancle",
					type: "post",
					data : {
						ano : anoval,
						nickname : nicknameval
						
					}
					
					
				});
				
			} else {
				$(this).children('div').addClass("on");
				$.ajax({
					url :"/like/add",
					type: "post",
					data : {
						ano : anoval,
						nickname : nicknameval
						
					}
					
					
				});

			}

		});
		/* 댓글 좋아요 삭제 */
		/* $(document).on("click", ".small_heart_btn", function() {
			if ($(this).children('div').hasClass("on") === true) {
				$(this).children('div').removeClass("on");
			} else {
				$(this).children('div').addClass("on");
			}
		}); */

		$(document).on("click", ".more_trigger", function() {
			let select = $(this);
			let cnoVal = select.data("cno");
			let anoVal = select.data("ano");
			$.ajax({
				url : "/comment/remove",
				type : "post",
				data : {
					cno : cnoVal,
					ano : anoVal
				}
			}).done(function(e) {

				location.reload();

			});

		});

	});
</script>
<jsp:include page="../common/90_footer.jsp"></jsp:include>

