<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>LEGGO : 약관동의</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<link rel="stylesheet" href="/leggo/css/member/login.css" />
	<link rel="stylesheet" href="/leggo/css/member/login1.css" />
</head>
<body>
	<div id="header">
		<div id="logo">
			<h1 id="header_logo_h1">
				<a>LEGGO(로고)</a>
			</h1>
		</div>
	</div>
	<div id="container">
		<div id="content">
			<div class="join_content">
				<div class="join_form">
					<form id="join_form" method="POST" >
						<p class="terms_chk_all">
							<input type="checkbox" id="chk_all" name="chk_all">
							<label for="chk_all">
								<span class="chk_all_txt">
									이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택)에 모두 동의합니다.
								</span>
							</label>
						</p>
						<p class="terms_chk_service">
							<input type="checkbox" id="chk_service" name="chk_service" class="terms_chk">
							<label for="chk_service">
								<span class="chk_term_txt">
									LEGGO 이용약관 동의(필수)
								</span>
							</label>
						</p>
						<div class="terms_box">
							<div class="terms_txt">
								<p class="terms_txt">
									LEGGO 이용약관 내용 작성<br/>
									LEGGO 이용약관 내용 작성<br/>
									LEGGO 이용약관 내용 작성<br/>
									LEGGO 이용약관 내용 작성<br/>
									LEGGO 이용약관 내용 작성<br/>
								</p>
							</div>
						</div>
						<p class="terms_chk_privacy">
							<input type="checkbox" id="chk_privacy" name="chk_privacy" class="terms_chk">
							<label for="chk_privacy">
								<span class="chk_term_txt">
									개인정보 수집 및 이용 동의(필수)
								</span>
							</label>
						</p>
						<div class="terms_box">
							<div class="terms_txt">
								<p class="terms_txt">
									개인정보 수집 및 이용 동의 약관 내용 작성<br/>
									개인정보 수집 및 이용 동의 약관 내용 작성<br/>
									개인정보 수집 및 이용 동의 약관 내용 작성<br/>
									개인정보 수집 및 이용 동의 약관 내용 작성<br/>
									개인정보 수집 및 이용 동의 약관 내용 작성<br/>
								</p>
							</div>
						</div>
						<p class="terms_chk_location">
							<input type="checkbox" id="chk_location" name="chk_location" class="terms_chk">
							<label for="chk_location">
								<span class="chk_term_txt">
									위치정보 이용약관 동의(선택)
								</span>
							</label>
						</p>
						<div class="terms_box">
							<div class="terms_txt">
								<p class="terms_txt">
									위치정보 이용약관 내용 작성<br/>
									위치정보 이용약관 내용 작성<br/>
									위치정보 이용약관 내용 작성<br/>
									위치정보 이용약관 내용 작성<br/>
									위치정보 이용약관 내용 작성<br/>
								</p>
							</div>
						</div>
						<div class="btn_box">
							<span class="btn_area">
								<a href="#" id="btn_join" class="btn">확인</a>
							</span>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#chk_all").on("click", function() {
				if ($("#chk_all").is(":checked")) {
		            $("#chk_service").prop("checked",true);
		            $("#chk_privacy").prop("checked",true);
		            $("#chk_location").prop("checked",true);
		        } else {
		            $("#chk_service").prop("checked",false);
		            $("#chk_privacy").prop("checked",false);
		            $("#chk_location").prop("checked",false);
		        }
			});
			$("#btn_join").on("click", function() {
				if(checkTerms()){
					$("#join_form").submit();
				}
			})
		});
		function checkTerms() {
	        if ($("#chk_service").is(":checked") == false || $("#chk_privacy").is(":checked") == false) {
	            alert("필수 약관에 모두 동의해주세요.");
	            return false;
	        } else {
	        	return true;
	        }
	    }
	</script>
</body>
</html>