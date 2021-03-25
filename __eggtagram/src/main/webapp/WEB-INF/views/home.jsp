<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<jsp:include page="common/10_header.jsp"></jsp:include>

<jsp:include page="common/20_nav.jsp"></jsp:include>


<section id="main_container">
	<div class="inner">

		<div class="contents_box">
			<c:forEach items="${all_list }" var="avo">
				<article class="contents">
					<header class="top">
						<div class="user_container">
							<div class="profile_img">
								<c:if test="${avo.thumb eq null }">
									<img src="/resources/f-instagram-master/imgs/default.jpg"
										alt="착한호랑이">

								</c:if>
								<c:if test="${!(avo.thumb eq null) }">
									<img src="/uploads/${avo.thumb }" alt="">

								</c:if>
							</div>
							<div class="user_name">
								<div class="nick_name m_text">
									<a class="user_id" href="/user/profile/${avo.nickname }">${avo.nickname }</a>
								</div>
								<div class="country s_text">Seoul, South Korea</div>
							</div>

						</div>

						<div class="sprite_more_icon" data-name="more">
							<ul class="toggle_box">
								<li><input type="submit" class="follow" value="팔로우"
									data-name="follow"></li>
								<li>수정</li>
								<li>삭제</li>
							</ul>
						</div>
					</header>

					<div class="img_section">
						<div class="trans_inner">
							<div>
								<img
									src="/resources/f-instagram-master/imgs/img_section/img01.jpg"
									alt="visual01">
							</div>
						</div>
					</div>

					<div class="bottom_icons">
						<div class="left_icons">
							<div class="heart_btn">
								<div class="sprite_heart_icon_outline" name="39"
									data-name="heartbeat"></div>
							</div>
							<a href="/article/detail/${avo.ano }"><div
									class="sprite_bubble_icon"></div> </a>
							<div class="sprite_share_icon" data-name="share"></div>
						</div>
						<div class="right_icon">
							<div class="sprite_bookmark_outline" data-name="bookmark"></div>
						</div>
					</div>

					<div class="likes m_text">
						좋아요 <span id="like-count-39">2,346</span> <span
							id="bookmark-count-39"></span> 개
					</div>
					<div class="comment_container">

						<div>
							<a href="/user/profile/${avo.nickname }"><span
								class="user_id">${avo.nickname }</span></a> ${avo.content }
						</div>

					</div>
						<div class="comment_container">
						<a href="/article/detail/${avo.ano }" class="text-secondary">댓글 전체 보기 </a>
						</div>
					<c:forEach items="${avo.comment_list}" var="cvo" end="2">
					
					<div class="comment_container">

						<div>
							<a href="/user/profile/${cvo.nickname }"><span
								class="user_id">${cvo.nickname }</span></a> ${cvo.content }
						</div>

					</div>
					
					</c:forEach>

					<div class="timer">${avo.regdate }</div>

					<!-- <div class="comment_field" id="add-comment-post37">
						<input type="text" placeholder="댓글달기...">
						<div class="upload_btn m_text" data-name="comment">게시</div>
					</div> -->
				</article>


			</c:forEach>
		</div>
		<input type="hidden" id="page" value="1">

		<div class="side_box">
			<div class="user_profile">
				<div class="profile_thumb">
					<c:if test="${thumb eq null }">
						<img src="/resources/f-instagram-master/imgs/default.jpg"
							alt="착한호랑이">

					</c:if>
					<c:if test="${!(thumb eq null) }">
						<img src="/uploads/${thumb }" alt="">

					</c:if>
				</div>
				<div class="detail">
					<div class="id m_text ">
						<a class="user_id" href="/user/profile/${login.nickname }">${login.email }</a>
					</div>
					<div class="ko_name">${login.nickname }</div>
				</div>
			</div>



			<article class="recommend">
				<header class="reco_header">
					<div>회원님을 위한 추천</div>
					<div class="more">모두 보기</div>
				</header>

				<div class="thumb_user">
					<div class="profile_thumb">
						<img src="/resources/f-instagram-master/imgs/thumb02.jpg"
							alt="프로필사진">
					</div>
					<div class="detail " >
						<div class="id">kind_tigerrrr </div>
					</div>
					<div class="text-primary mr-3" style="position: absolute; right: 18px;">팔로우</div>
				</div>
				
				<div class="thumb_user">
					<div class="profile_thumb">
						<img src="/resources/f-instagram-master/imgs/thumb02.jpg"
							alt="프로필사진">
					</div>
					<div class="detail " >
						<div class="id">kind_tigerrrr </div>
					</div>
					<div class="text-primary mr-3" style="position: absolute; right: 18px;">팔로우</div>
				</div><div class="thumb_user">
					<div class="profile_thumb">
						<img src="/resources/f-instagram-master/imgs/thumb02.jpg"
							alt="프로필사진">
					</div>
					<div class="detail " >
						<div class="id">kind_tigerrrr </div>
					</div>
					<div class="text-primary mr-3" style="position: absolute; right: 18px;">팔로우</div>
				</div><div class="thumb_user">
					<div class="profile_thumb">
						<img src="/resources/f-instagram-master/imgs/thumb02.jpg"
							alt="프로필사진">
					</div>
					<div class="detail " >
						<div class="id">kind_tigerrrr </div>
					</div>
					<div class="text-primary mr-3" style="position: absolute; right: 18px;">팔로우</div>
				</div>
			</article>
		</div>


	</div>
</section>

</section>
<jsp:include page="common/90_footer.jsp"></jsp:include>
