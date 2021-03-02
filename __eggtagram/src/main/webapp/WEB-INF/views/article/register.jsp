<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../common/10_header.jsp"></jsp:include>
<style>
#id_photo {
	display: none;
}

#id_photo img {
	float: left;
	display: inline;
}
</style>
<jsp:include page="../common/20_nav.jsp"></jsp:include>

<link rel="stylesheet"
	href="/resources/f-instagram-master/css/new_post.css">


<div id="main_container">
	<div class="post_form_container">
		<form method="post" class="post_form" enctype="multipart/form-data">
			<input type="text" hidden="" value="${login.nickname }" name="nickname">





			<div class="title">NEW POST</div>
			<div class="preview" id="trigger">
				<div class="upload">
					<div id="fileZone">
						<div class="plus_icon">
							<span></span> <span></span>
						</div>
						<p>포스트 이미지 추가</p>

						<!--<p><img id="img_id" src="#" style="width: 300px; height: 300px; object-fit: cover" alt="thumbnail"></p>-->
					</div>
				</div>
			</div>
			<p>
				<input type="file" name="photo" id="id_photo" required="required"
					multiple>

			</p>
			<p>
				<textarea name="content" id="text_field" cols="50" rows="5"
					placeholder="140자 까지 등록 가능합니다.
#태그명 을 통해서 검색 태그를 등록할 수 있습니다.
예시 : I # love # insta!"></textarea>

			</p>
			<input class="btn btn-secondary btn-block" type="submit"
				value="파일을 입력하세요" disabled="disabled" id="submit">
		</form>

	</div>

</div>


</section>



<script>
	var files = {};
	$(function() {
		$(document).on("click", "#trigger", function() {
			$("#id_photo").click();

		});
		$(document)
				.on(
						"change",
						"#id_photo",
						function(e) {
							$('#submit').removeClass(
									'btn btn-secondary btn-block');
							$('#submit').addClass('submit_btn');
							$('#submit').attr('disabled', false);
							$('#submit').val('작성');
							let fileZone = $('#fileZone');
							fileZone.html("");
							var files = e.target.files;
							var sel_files = [];
							var filesArr = Array.prototype.slice.call(files);
							filesArr
									.forEach(function(f) {
										sel_files.push(f);

										var reader = new FileReader();
										reader.onload = function(e) {
											var img_html = "<img src=\""+e.target.result + "\" width=148px height=150px  />";
											$("#fileZone").append(img_html);

										}
										reader.readAsDataURL(f);
									});

						});
	});
</script>
</body>

</html>



