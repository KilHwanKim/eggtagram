<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../common/10_header.jsp"></jsp:include>
<link rel="stylesheet" href="/resources/f-instagram-master/css/login.css?var=1">


<div id="main_container">

        <div class="form_container">

            <div class="form">

				
                <h1 class="sprite_insta_big_logo title"></h1>
				
                <form method="post">
                <p>친구들의 사진과 동영상을 보려면 가입하세요. </p>
                    <p class="login_user_name">
                        
                        <input type="text" name="nickname" placeholder="nickname" required="required" id="nick_input">
                        <span class="nick_check_fail"> 중복됩니다!!</span>
                        <span class="nick_check_success"> 사용가능 합니다!!</span>
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
<script type="text/javascript">
$("#nick_input").on("keyup",function(){
	let nickVal = $("#nick_input").val();
	console.log(nickVal);
	$.ajax({
		url: "/user/check/nick",
		type: "post",
		data: {nickname : nickVal}
		
	}).done(function(e){
		console.log(e);
		if (e == "0" && nickVal !=""){
			console.log("성공");
			$('.nick_check_success').css("display","inline-block");
			$('.nick_check_fail').css("display","none");
			
		}
		else {
			$('.nick_check_success').css("display","none");
			$('.nick_check_fail').css("display","inline-block");
			console.log("실패");
			$('#submit_btn').attr('disabled', true);
		}
		
		
	});
	
	
});

</script>
<jsp:include page="../common/90_footer.jsp"></jsp:include>
