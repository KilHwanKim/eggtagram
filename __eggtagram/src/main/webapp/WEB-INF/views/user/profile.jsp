
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<jsp:include page="../common/10_header.jsp"></jsp:include>

<jsp:include page="../common/20_nav.jsp"></jsp:include>

<link rel="stylesheet"
	href="/resources/f-instagram-master/css/profile.css">





<section id="container">




	<div id="main_container">

		<section class="b_inner">

			<div class="hori_cont">
				<div class="profile_wrap">
					<div class="profile_img" id="trigger2">
						<c:if test="${profile == '' }">
						<img src="/resources/f-instagram-master/imgs/thumb.jpeg"
							alt="착한호랑이">
						
						</c:if>
						<c:if test="${profile !='' }">
						<img src="/uploads/${profile }"
							alt="착한호랑이">
						
						</c:if>
						
						


					</div>
					<form method="post" enctype="multipart/form-data">
						<input type="file" hidden="" id="id_profile" name="photo">
						
						<input type="submit">
					</form>
				</div>
				

				<div class="detail">
					<div class="top">
						<div class="user_name">${uvo.nickname }</div>




					</div>

					<ul class="middle">
						<li><span>게시물</span> ${article_count}</li>
						<li><span>팔로워</span> ${belong_count}</li>
						<li><span>팔로우</span> ${target_count}</li>
					</ul>

					<h1></h1>
					<p class="about">${uvo.usercomment }</p>

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

	});
</script>




</body>
</html>
