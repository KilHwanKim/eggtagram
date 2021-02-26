<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../common/10_header.jsp"></jsp:include>
<link rel="stylesheet" href="/resources/f-instagram-master/css/login.css">
<jsp:include page="../common/20_nav.jsp"></jsp:include>

<div id="main_container">

        <div class="form_container">

            <div class="form">

				
                <h1 class="sprite_insta_big_logo title"></h1>
				
                <form method="post">
                <p>친구들의 사진과 동영상을 보려면 가입하세요. </p>
                    <p class="login_user_name">
                        
                        <input type="text" name="nickname" placeholder="nickname" required="required">
                    </p>
                    <p class="login_user_name">
                        
                        <input type="email" name="email" placeholder="only email"required="required">
                    </p>

                    <p class="login_user_password">
                     
                        <input type="text" name="pwd" placeholder="pwd"required="required">
                    </p>

                    <input type="submit" id="submit_btn" value="회원가입" class="submit_btn">
                </form>



            </div>

            


        </div>

    </div>

</section>
</body>
</html>

