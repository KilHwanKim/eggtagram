<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../common/10_header.jsp"></jsp:include>
<link rel="stylesheet" href="/resources/f-instagram-master/css/login.css">



<body>
<div id="main_container">

        <div class="form_container">

            <div class="form">


                <h1 class="sprite_insta_big_logo title"></h1>

                <form method="post">
                    <p class="login_user_name">
                        <label for="user_name">사용자명:</label>
                        <input type="email" name ="email" required="required">
                    </p>

                    <p class="login_user_password">
                        <label for="user_password">비밀번호:</label>
                        <input type="password" name="pwd" required="required">
                    </p>

                    <input type="submit" id="submit_btn" value="로그인" class="submit_btn">
                </form>



            </div>

            <div class="bottom_box">
                <div>
                    <span>아이디가 없으신가요?</span><a href="/user/signup">회원가입</a>
                </div>
            </div>


        </div>

    </div>
</section>
</body>
</html>

