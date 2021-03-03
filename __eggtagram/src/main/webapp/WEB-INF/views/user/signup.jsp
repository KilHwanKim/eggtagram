<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../common/10_header.jsp"></jsp:include>
<link rel="stylesheet" href="/resources/f-instagram-master/css/login.css">


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
                     
                        <input type="password" name="pwd" placeholder="pwd"required="required">
                    </p>
                    <br>
                    <p class="login_user_gender">
                     	
              
                        <input type="radio" name="ismen" required="required" value="1" style="width: auto;">
                        <label for="mamale">male</label>
                        
                        <input type="radio" name="ismen" required="required" value="0" style="width: auto;">
                        <label for="female">female</label>
                    </p>
                    

                    <input type="submit" id="submit_btn" value="회원가입" class="submit_btn">
                    
                    
                </form>



            </div>
		<div class="bottom_box">
                <div>
                    <span>아이디가 있으신가요?</span><a href="/">로그인</a>
                </div>
            </div>
            


        </div>

    </div>

</section>
</body>
</html>

