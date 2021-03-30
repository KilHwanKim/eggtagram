<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<style>
.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 150px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	margin-top: 16px;
	z-index: 1;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.list-group-item:hover {
	background: #eeeeee;
}
</style>

<body>
	<section id="container">
		<header id="header">
			<section class="h_inner">

				<h1 class="logo">
					<a href="/">
						<div class="sprite_insta_icon"></div>
						<div>
							<div class="sprite_write_logo"></div>
						</div>
					</a>
				</h1>

				<div class="search_field">
					<input type="text" placeholder="검색" tabindex="0">

					<div class="fake_field">
						<span class=sprite_small_search_icon></span> <span>검색</span>
					</div>
				</div>


				<div class="right_icons">
					<a href="/article/register"><div class="sprite_camera_icon"></div></a>
					<a  data-toggle="modal" data-target="#unem"><div class="sprite_compass_icon"></div></a> <a
						 data-toggle="modal" data-target="#unem"><div class="sprite_heart_icon_outline"></div></a>

					<div class="sprite_user_icon_outline dropdown">

						<div class="dropdown-content">
							<div class="list-group">

								<a class="list-group-item"
									href="/user/profile/${login.nickname }"
									style="text-decoration: none; color: black;">프로필 </a> <a
									class="list-group-item" href="/user/edit"
									style="text-decoration: none; color: black;">수정 </a> <a
									class="list-group-item" href="/user/logout"
									style="text-decoration: none; color: black;">로그아웃 </a>
							</div>


						</div>
					</div>









				</div>


			</section>
		</header>