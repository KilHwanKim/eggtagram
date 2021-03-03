<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<jsp:include page="../common/10_header.jsp"></jsp:include>

<link rel="stylesheet"
	href="/resources/f-instagram-master/css/detail-page.css">










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
								<img src="/resources/f-instagram-master/imgs/thumb.jpeg" alt="">
							</div>
							<div class="user_name">
								<div class="nick_name">${avo.nickname }</div>
								<div class="country">Seoul, South Korea</div>
							</div>
						</div>
						<div class="sprite_more_icon" data-name="more">
							<ul class="more_detail">
								<li>팔로우</li>
								<li>수정</li>
								<li>삭제</li>
							</ul>
						</div>

					</header>

					<section class="scroll_section">
						<div class="admin_container">
							<div class="admin">
								<img src="/resources/f-instagram-master/imgs/thumb.jpeg"
									alt="user">
							</div>
							<div class="comment">
								<span class="user_id">Kindtiger</span>강아지가 많이 힘든가보다ㅜㅜㅜㅜㅜ조금만힘내
								<div class="time">2시간</div>
							</div>
						</div>

						<div class="user_container-detail">
							<div class="user">
								<img src="/resources/f-instagram-master/imgs/thumb02.jpg"
									alt="user">
							</div>
							<div class="comment">
								<span class="user_id">in0.lee</span>너무귀엽네요 ㅎㅎㅎ맞팔해요~!
								<div class="time">
									2시간 <span class="try_comment">답글 달기</span>
								</div>
								<div class="icon_wrap">
									<div class="more_trigger">
										<div class="sprite_more_icon"></div>
									</div>
									<div>
										<div class="sprite_small_heart_icon_outline"></div>
									</div>
								</div>
							</div>
						</div>

						<div class="user_container-detail">
							<div class="user">
								<img src="/resources/f-instagram-master/imgs/thumb03.jpg"
									alt="user">
							</div>
							<div class="comment">
								<span class="user_id">ye_solkim</span>강아지 이름이 뭐에요???
								<div class="time">
									2시간 <span class="try_comment">답글 달기</span>
								</div>
								<div class="icon_wrap">
									<div class="more_trigger">
										<div class="sprite_more_icon"></div>
									</div>
									<div>
										<div class="sprite_small_heart_icon_outline"></div>
									</div>
								</div>
							</div>
						</div>

						<div class="user_container-detail">
							<div class="user">
								<img src="/resources/f-instagram-master/imgs/thumb02.jpg"
									alt="user">
							</div>
							<div class="comment">
								<span class="user_id">in0.lee</span>너무귀엽네요 ㅎㅎㅎ맞팔해요~!
								<div class="time">
									2시간 <span class="try_comment">답글 달기</span>
								</div>
								<div class="icon_wrap">
									<div class="more_trigger">
										<div class="sprite_more_icon"></div>
									</div>
									<div>
										<div class="sprite_small_heart_icon_outline"></div>
									</div>
								</div>
							</div>
						</div>

						<div class="user_container-detail">
							<div class="user">
								<img src="/resources/f-instagram-master/imgs/thumb03.jpg"
									alt="user">
							</div>
							<div class="comment">
								<span class="user_id">in0.lee</span>너무귀엽네요
								<div class="time">
									2시간 <span class="try_comment">답글 달기</span>
								</div>
								<div class="icon_wrap">
									<div class="more_trigger">
										<div class="sprite_more_icon"></div>
									</div>
									<div>
										<div class="sprite_small_heart_icon_outline"></div>
									</div>
								</div>
							</div>
						</div>

						<div class="user_container-detail">
							<div class="user">
								<img src="/resources/f-instagram-master/imgs/thumb02.jpg"
									alt="user">
							</div>
							<div class="comment">
								<span class="user_id">in0.lee</span>너무귀엽네요 ㅎㅎㅎ맞팔해요~!
								<div class="time">
									2시간 <span class="try_comment">답글 달기</span>
								</div>
								<div class="icon_wrap">
									<div class="more_trigger">
										<div class="sprite_more_icon"></div>
									</div>
									<div>
										<div class="sprite_small_heart_icon_outline"></div>
									</div>
								</div>
							</div>
						</div>

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
						<input type="text" placeholder="댓글달기..">

						<div class="upload_btn">게시</div>
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
<jsp:include page="../common/90_footer.jsp"></jsp:include>

