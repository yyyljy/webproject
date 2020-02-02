<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>회원가입 : LEGGO</title>
<!-- 	<link rel="stylesheet" href="/leggo/css/member/login.css" />
	<link rel="stylesheet" href="/leggo/css/member/login1.css" /> -->
</head>
<body id="signup" class="">
	<div class="container-flex">
		<div id="page-wrap">
			<a href="#" class="logo-center"><img src="/leggo/images/LeggoLogo.png" alt=""></a>
			<div id="page-content">
				<div class="text-center">
					<div class="auth-form-wrap" style="top: 50%">
						<form name="sign_up" method="post" class="auth-form">
							<h1>회원가입</h1>
							<div class="row">
        					<div class="col-xs-6">
							<div class="field">
								<input type="text" id="user_id"
									name="sign_up[id]" required="required"
									placeholder="아이디" class="form-control" />
							</div>
							<div class="field">
								<input type="password" id="pass"
									name="sign_up[password][first]" required="required"
									placeholder="비밀번호" class="form-control" />
							</div>
							<div class="field">
								<input type="password" id="pass_second"
									name="sign_up[password][second]" required="required"
									placeholder="비밀번호 확인" class="form-control" />
							</div>
							<div class="field">
								<input type="text" id="pass_hint"
									name="sign_up[pass_hint]" required="required"
									placeholder="비밀번호 힌트" class="form-control" />
							</div>
							<div class="field">
								<input type="text" id="pass_ans"
									name="sign_up[pass_answer]" required="required"
									placeholder="비밀번호 답변" class="form-control" />
							</div>
							<div class="field">
								<input type="text" id="user_name"
									name="sign_up[name]" required="required"
									placeholder="이름" class="form-control" />
							</div>
							<div class="field">
								<input type="text" id="birth"
									name="sign_up[birth]" required="required"
									placeholder="생년월일" class="form-control" />
							</div>
							</div>
                       		<div class="col-xs-6">
							<div class="field">
	                            <select id="gender" name="sign_up[gender]" class="form-control" aria-label="성별">
	                                <option value="" selected>성별</option>
	                                        <option value="M">남자</option>
	                                        <option value="F">여자</option>
	                            </select>
                       		</div>
							<div class="field">
								<input type="text" id="tel"
									name="sign_up[tel]" required="required"
									placeholder="일반전화 번호" class="form-control" />
							</div>
							<div class="field">
								<input type="tel" id="mobile"
									name="sign_up[tel]" required="required"
									placeholder="휴대전화 번호" class="form-control" />
							</div>
							<div class="field">
								<input type="text" id="postcode"
									name="sign_up[postcode]" required="required"
									placeholder="우편번호" class="form-control1" />
								<button type="button" class="blue-btn half-width mb15" onclick="execDaumPostcode()">우편번호 찾기</button>
							</div>
							<div class="field">
								<input type="text" id="addr"
									name="sign_up[address]" required="required"
									placeholder="주소" class="form-control" />
							</div>
							<div class="field">
								<input type="text" id="email"
									name="sign_up[email]" required="required"
									placeholder="본인 확인 이메일" class="form-control" />
							</div>
							<div class="field">
								<input type="radio" id="recv_email"	name="sign_up[emailrecv]" value="이메일 수신 여부" />이메일
							</div>
							<div class="field">
								<input type="radio" id="recv_text" name="sign_up[textrecv]" value="문자 수신 여부" />문자
							</div>
							</div>
							<div class="field">
								<label>
								<input type="checkbox" id="trader_sign_up_agree" name="trader_sign_up[agree]" required="required" value="1" />
								다음을 읽고 동의합니다 <br/>
									<a	href="/leggo/html/member/agree.jsp" target="_blank"> 개인정보 사용</a>,
									<a	href="/leggo/html/member/agree.jsp" target="_blank"> 위치정보 제공</a> 과 <a	href="/leggo/html/member/agree.jsp" target="_blank"> 개인정보 보호 정책 </a>
								</label>
							</div>
							<button type="submit" class="blue-btn full-width mb15">가입하기</button>
							<div class="text-center mt15">
								이미 계정이 있으신가요? <a class="recover"
									href="/leggo/html/member/login.jsp">로그인 하기</a>
							</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sign_up_postcode').value = data.zonecode;
                document.getElementById("sign_up_address").value = roadAddr;
            }
        }).open();
    }
</script>
</body>
</html>
