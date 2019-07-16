<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="icon" href="./img/core-img/favicon.ico">
<link rel="stylesheet" href="../css/style2.css">
<style>
.float {
	float: left;
}
.over{
		overflow:hidden;
        box-sizing: border-box;
}
.skip {
  text-overflow:ellipsis;
  white-space:nowrap;
  word-wrap:normal;
  width:100%;
  overflow:hidden;
}
#findAdd {
	padding: 5px;
	width: 50px;
	height: 50px;
}

#myinfo {
	width: 260px;
	height: 260px;
}

.no {
	padding: 0px;
	margin: 0px;
}

#area {
	width: 100%;
	height: 100px;
}
/*    div{     */
/*     border:1px solid black;     */
/*    }     */
#delId{
 text-align: center;
}
hr{
margin:5px;
}
.center{
text-align: center;
}
.listimg{
width:50px;
height:50px;
}
#clickList{
height:70px;
}
#sellTitle{
hirght:80px;
}
</style>
	<script type="text/javascript" src="/js/cross.js"></script>
</head>
<body oncontextmenu="return false" ondragstart="return false"
	onselectstart="return false">
	<jsp:include page="/WEB-INF/views/module/headerAndNavi.jsp"></jsp:include>


	<div class="container">

		<div class="row my-2">
			<div class="col-lg-12 order-lg-2">
				<ul class="nav nav-tabs">
					<li class="nav-item"><a href="" data-target="#profile"data-toggle="tab" class="nav-link active">나의 정보</a></li>
					<li class="nav-item"><a href="" data-target="#messages"	data-toggle="tab" class="nav-link">쪽지함</a></li>
					<li class="nav-item"><a href="" data-target="#sell"data-toggle="tab" class="nav-link">판매 내역</a></li>
					<li class="nav-item"><a href="" data-target="#buy"data-toggle="tab" class="nav-link">구매 내역</a></li>
					<li class="nav-item"><a href="" data-target="#edit"data-toggle="tab" class="nav-link">정보 수정</a></li>
					<li class="nav-item"><a href="" data-target="#delId"data-toggle="tab" class="nav-link">회원 탈퇴</a></li>
				</ul>
				<div class="tab-content py-4 ">
					<div class="tab-pane active" id="profile">
						<div class="row">
							<div class="col-lg-3">
								<img src="${id.member_imgpath }" class="mx-auto img-circle"
									id=myinfo alt="avatar">
							</div>
							<div class="col-lg-6">
								<div class="float col-lg-12 col-mf-12">
									<div class=" form-group row">
										<label class="col-lg-3 col-form-label form-control-label">아이디</label>
										<div class=" col-lg-9">
											<div class=" form-control" type="text">${id.member_id }
											</div>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-3 col-form-label form-control-label">이름</label>
										<div class="col-lg-9">
											<div class="form-control" type="text">${id.member_name }
											</div>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-3 col-form-label form-control-label">생일</label>
										<div class="col-lg-9">
											<div class="form-control" type="text">${id.member_birth}</div>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-3 col-form-label form-control-label">핸드폰 번호</label>
										<div class="col-lg-9">
											<div class="form-control" type="text">${id.member_phone}</div>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-3 col-form-label form-control-label">기본 주소</label>
										<div class="col-lg-9">
											<div class="form-control" type="text">${id.member_address1 }</div>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-3 col-form-label form-control-label">상세 주소</label>
										<div class="col-lg-9">
											<div class="form-control" type="text">${id.member_address2 }</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12 mt-5">
								<h5 class="mt-2">
									<span class="fa fa-clock-o ion-clock float-right"></span>최근 나의
									활동
								</h5>
								<table class="table table-sm table-hover table-striped">
									<tbody>
										<tr>
											<td><strong>김동현</strong>님의 판매 활동 <strong>`상추튀김`</strong>
											</td>
										</tr>
										<tr>
											<td><strong>김동현</strong>님의 판매 활동 <strong>`마늘주스`</strong>
											</td>
										</tr>
										<tr>
											<td><strong>김동현</strong>님의 구매 활동 <strong>`공룡고기`</strong>
											</td>
										</tr>

									</tbody>
								</table>
							</div>
						</div>
						<!--/row-->
					</div>
					<div class="tab-pane" id="messages">
						<div class="alert alert-info alert-dismissable">
							<a class="panel-close close" data-dismiss="alert">×</a> 최근 받은 쪽지
							목록입니다
						</div>
						<table class="table table-hover table-striped">
							<tbody>
								<tr>
									<td><span class="float-right font-weight-bold">3
											hrs ago</span> Here is your a link to the latest summary report from
										the..</td>
								</tr>
								<tr>
									<td><span class="float-right font-weight-bold">Yesterday</span>
										There has been a request on your account since that was..</td>
								</tr>
								<tr>
									<td><span class="float-right font-weight-bold">9/10</span>
										Porttitor vitae ultrices quis, dapibus id dolor. Morbi
										venenatis lacinia rhoncus.</td>
								</tr>
								<tr>
									<td><span class="float-right font-weight-bold">9/4</span>
										Vestibulum tincidunt ullamcorper eros eget luctus.</td>
								</tr>
								<tr>
									<td><span class="float-right font-weight-bold">9/4</span>
										Maxamillion ais the fix for tibulum tincidunt ullamcorper
										eros.</td>
								</tr>
							</tbody>
						</table>
					</div>
				
					<div class="tab-pane" id="sell"><!-- 판매 내역 -->
					<h4>판매 내역 확인</h4>
					<hr>
					<div class="col-12 over center"id="sellTitle">
					<div class="col-2 float">요청</div>
					<div class="col-1 float">이미지</div> 
				    <div class="float col-4">제목</div>
					<div class="col-2 float"> 판매 금액</div> 
					<div class="col-1 float "> 수량</div>
					<div class="col-2 float "> 기한</div>
					</div>
					<hr>
					
					<c:forEach var="i" items="${mylist }">
					<div class="col-12 over center "id="clickList">
					<div class="col-2 float center ">
					<input type=button class="btn-success del_list" value="삭제요청">
					<input type=button class="btn-danger del_list2" value="요청중"></div>
<!-- 					<div class="col-2 float center" ><input type=button class="btn-danger"  value="요청중"></div> -->
					<a href="/shopboard/ShopBoardViewProc?seq=${i.shop_seq}">
					<div class="col-1 float "><img src="${i.shop_imagepath1 }" class="listimg"></div>
					<div class="col-4 float skip ">${i.shop_title }</div>
					<div class="col-2 float">${i.shop_price }원</div>
					<div class="col-1 float">${i.shop_quantity }개</div>
					<div class="col-2 float">${i.shop_expiration }</div>
					</a>
					</div>
						</c:forEach>
<!-- 						<ul class="btn-group pagination"> -->
<%-- 							<c:if test="${mpdto.toPrev }"> --%>
<%-- 								<li><a href='<c:url value="/board/boardList?page=${mpdto.startNavi-1 }"/>'><i class="fa fa-chevron-left"></i></a></li> --%>
<%-- 							</c:if> --%>
<%-- 							<c:forEach begin="${mpdto.startNavi }"end="${mpdto.endNavi }" var="idx"> --%>
<%-- 								<li><a href='<c:url value="/board/boardList?page=${idx }"/>'><i class="fa">${idx }</i></a></li> --%>
<%-- 							</c:forEach> --%>
<%-- 							<c:if test="${mpdto.toNext && mpdto.endNavi >0 }"> --%>
<%-- 								<li><a href='<c:url value="/board/boardList?page=${mpdto.endNavi+1 }"/>'><i class="fa fa-chevron-right"></i></a></li> --%>
<%-- 							</c:if> --%>
<!-- 						</ul> -->
					</div>
					
					<div class="tab-pane" id="buy"><!-- 구매 내역 -->
					<h4>구매 내역 확인</h4>
					<hr>
					<div class="col-12 over center">
					<div class="col-2 float">번호</div>
					<div class="col-1 float">이미지</div> 
				    <div class="float col-4">제목</div>
					<div class="col-2 float"> 구매 금액</div> 
					<div class="col-1 float "> 수량</div>
					<div class="col-2 float "> 구매 날짜</div>
					</div>
					<hr>
					
					<c:forEach var="i" items="${order }">
					<div class="col-12 over center "id="clickList">
				<div class="col-2 float">${i.order_seq }</div>
<!-- 					<div class="col-2 float center" ><input type=button class="btn-danger"  value="요청중"></div> -->
<%-- 					<a href="/shopboard/ShopBoardViewProc?seq=${i.shop_seq}"> --%>
					<div class="col-1 float "><img src="${i.order_image }" class="listimg"></div>
					<div class="col-4 float skip ">${i.order_title }</div>
					<div class="col-2 float">${i.order_price }원</div>
					<div class="col-1 float">${i.order_quantity }개</div>
					<div class="col-2 float">${i.order_time }</div>
<!-- 					</a> -->
					</div>
						</c:forEach>
					</div>
					
					<div class="tab-pane col-lg-12" id="edit">
						<div id="preview" class="col-lg-4 order-lg-1 text-center float">
							<form id=mypage_Img action="/member/uploadImg" method="post"enctype="multipart/form-data">
								<img src="${id.member_imgpath }" class="mx-auto img-circle"alt="avatar"> 
								<input type=file id="file" name="file" accept=".gif, .jpg, .png, .jpeg" onchange="checkFile(this)">

								<input type="button" id="change" class="btn btn-success " name="my_images"
									value="사진 변경"> <input type="submit" id="uploadImg"
									class="btn btn-success " value="사진 업로드">

							</form>
						</div>
					
						<div class="float col-lg-8">
							<form id="edit_mypage"action="/member/edit_mypage" method="post">
								<div class="form-group row">

									<label class="col-lg-3 col-form-label form-control-label">아이디(수정
										불가)</label>
									<div class="col-lg-9">
										<input class="form-control" type="text" name="member_id"
											value="${id.member_id }" readonly>

									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-3 col-form-label form-control-label">이름(수정
										불가)</label>
									<div class="col-lg-9">
										<input class="form-control" name="member_name" type="text"
											value="${id.member_name }" readonly>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-3 col-form-label form-control-label">생일(수정
										불가)</label>
									<div class="col-lg-9">
										<input class="form-control" type="text" name="member_birth"
											value="${id.member_birth}" readonly>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-3 col-form-label form-control-label">성별(수정
										불가)</label>
									<div class="col-lg-9">
										<input class="form-control" type="text" name="member_gender"
											value="${id.member_gender }" readonly>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-3 col-form-label form-control-label">우편번호
										<!--                             <button type="button" onclick="sample4_execDaumPostcode()" -->
										<!--                            class="btn btn-success p-1"data-aria-haspopup="true"aria-expanded="false" id="findAdd">변경</button>       -->
										<img src="/img/core-img/find_addr.png"
										onclick="sample4_execDaumPostcode()"
										class="mx-auto img-circle" data-aria-haspopup="true"
										aria-expanded="false" id="findAdd">
									</label>
									<div class="col-lg-9">
										<input class="form-control" id="postcode"
											name="member_postcode" type="text"
											value="${id.member_postcode}" readonly>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-3 col-form-label form-control-label">도로명
										주소 </label>
									<div class="col-lg-9">
										<input class="form-control" id="add1" name="member_address1"
											type="text" value="${id.member_address1}" readonly>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-3 col-form-label form-control-label">상세주소
									</label>
									<div class="col-lg-9">
										<input class="form-control" id="add2" name="member_address2" placeholder="최대 20자"
											type="text" value="${id.member_address2}">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-3 col-form-label form-control-label">핸드폰
										번호</label>
									<div class="col-lg-9">
										<input class="form-control" id="phone" name="member_phone"
											type="text" value="${id.member_phone}"
											 placeholder=" '-'를 제외하고 입력해주세요">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-3 col-form-label form-control-label">자기
										소개</label>
									<div class="col-lg-9" id="introdiv">
										<textarea style="resize: none;" id=area name="member_intro" placeholder="최대 100자">${id.member_intro}</textarea>
									</div>
									<input name="member_intro" type="hidden">
									<%--                                 <div class=" ">${id.member_intro}</div> --%>
								</div>

								<div class="form-group row">
									<label class="col-lg-3 col-form-label form-control-label">비밀번호</label>
									<div class="col-lg-9">
										<input class="form-control" type="password" name="member_pw"
											id="pw1"    placeholder="대,소문자,숫자 포함 8~13자리">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-3 col-form-label form-control-label">비밀번호
										확인</label>
									<div class="col-lg-9">
										<input class="form-control" type="password" id="pw2"    placeholder="대,소문자,숫자 포함 8~13자리">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-3 col-form-label form-control-label"></label>
									<div class="col-lg-9">

										<!--                                 <input type="reset" class="btn btn-secondary" value="초기화"> -->

										<input type="button" id="edit_info" class="btn btn-success"value="정보 수정"> 
										<input type="button" id="goHome"class="btn btn-success" value="홈으로">
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="tab-pane" id="delId">
					<h1>그동안 저희 사이트를 이용해 주셔서 감사합니다</h1>
					<p>
					<h3>본인확인을 위해 정보를 입력해주세요</h3>
								<form id="delform" action="/member/delOK" >
							<div class="form-group row">
									<label class="col-lg-3 col-form-label form-control-label">아이디</label>
									<div class="col-lg-6">
										<input class="form-control" id="del_id" name="del_id"type="text">
									</div>
								</div>
								<P>
										<div class="form-group row">
									<label class="col-lg-3 col-form-label form-control-label">비밀번호</label>
									<div class="col-lg-6">
										<input class="form-control" id="del_pw" name="del_pw"type="password" >
									</div>
									<p>
								</div>
										<div class="form-group row">
									<label class="col-lg-3 col-form-label form-control-label">비밀번호 확인</label>
									<div class="col-lg-6">
										<input class="form-control" id="del_pw2" type="password" >
									</div>
								</div>
								</form>
								<p>
												<input type="button" id="delOK"class="btn btn-success" value="회원탈퇴">
					</div>
					
					
				</div>
			</div>
		</div>
	</div>

<script src = "resources/WEB-INF/views/XSS/XSS.jsp"></script>
	<script>

	$("#goHome").on("click",function(){
		 location.href="/home";
	})
	
	//-----------------------------회원탈퇴
	$("#delOK").on("click",function(){
		if($("#del_id").val()==""){
			alert("아이디를 입력해주세요");
		}else if($("#del_pw").val()==""){
			alert("비밀번호를 입력해주세요");
		}else if($("#del_pw2").val()==""){
			alert("비밀번호 확인을 입력해주세요");
		}else if($("#del_pw").val()!=$("#del_pw2").val()){
			alert("비밀번호가 일치하지 않습니다");
		}
		else{
		var result=confirm("정말 탈퇴하시겠습니까?");
		if(result){	
			removeXSS($("#del_id").val(),$("#del_id").attr("id"));
			removeXSS($("#del_pw").val(),$("#del_pw").attr("id"));
			removeXSS($("#del_pw2").val(),$("#del_pw2").attr("id"));
			$("#delform").submit();
		}
			else return;
		}
	});
	//-----------------------------회원탈퇴 끝
	
		$("#file").hide();
	//---------------------------------------------- 정보수정 이미지 변경 확장자 제한
		function checkFile(f){

			// files 로 해당 파일 정보 얻기.
			var file = f.files;

			// file[0].name 은 파일명 입니다.
			// 정규식으로 확장자 체크
			if(!/\.(gif|jpg|jpeg|png)$/i.test(file[0].name)) {
			alert('gif, jpg, png, jpeg 파일만 선택해 주세요.\n\n현재 파일 : ' + file[0].name);
			$("#imgInput").val("");
			}
			// 체크를 통과했다면 종료.
			else return;

			// 체크에 걸리면 선택된  내용 취소 처리를 해야함.
			// 파일선택 폼의 내용은 스크립트로 컨트롤 할 수 없습니다.
			// 그래서 그냥 새로 폼을 새로 써주는 방식으로 초기화 합니다.
			// 이렇게 하면 간단 !?
			f.outerHTML = f.outerHTML;
		}


		$("#change").on("click", function() {
			$("#file").click();//사진변경 버튼 누르면 file버튼 클릭됨
		});

		$("#file").on("change", function() {
				file = $("#file").prop("files")[0];
				ImgURL = window.URL.createObjectURL(file);
				$("#preview img").attr('src', ImgURL);
				$("#preview").show();
		});

		$("#edit_info").on("click", function() {//정보수정 버튼 클릭시

			var regnum = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
		    var regPw = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$/g;
			var regPw2=/(\w)\1\1/g;

			if ($("#postcode").val() == "") {
				alert("주소를 입력하세요");
				$("#findAdd").click();
			}else if ($("#phone").val() == "") {
				alert("핸드폰 번호를 입력하세요");
				$("#phone").focus();
			} else if (!regnum.test($("#phone").val())) {
				alert("핸드폰 번호가 형식에 맞지 않습니다");
				$("#phone").focus();
				$("#phone").focus("");
			} else if ($("#area").val() == "") {
				alert("자기소개를 입력해주세요");
				$("#area").focus();
			}else if ($("#pw1").val() == "") {
				alert("비밀번호를 입력해주세요");
				$("#pw1").focus();
			}
			else if(!regPw.test($("#pw1").val())){
				alert("비밀번호 형식에 맞지 않습니다");
				$("#pw1").focus();
				$("#pw1").focus("");
			}
			else if(regPw2.test($("#pw1").val())){
	            alert('연속으로 같은 문자를 3번 이상 사용하실 수 없습니다.');
	            $("#pw1").focus();
				$("#pw1").focus("");
	        }
			else if ($("#pw2").val() == "") {
				alert("비밀번호 확인을 입력해주세요");
				$("#pw2").focus();
			} else if ($("#pw1").val() != $("#pw2").val()) {
				alert("비밀번호가 같아야 합니다");
				$("#pw2").focus();
				$("#pw2").val("");
			} else if ($("#add2").val() == "") {
				var result = confirm("상세주소가 없습니다.\n변경하시겠습니까?");
				if(result)	$("#edit_mypage").submit();
				else $("#add2").focus();
			} else {//정보수정을 완벽히 입력했다면
				removeXSS($("#postcode").val(),$("#postcode").attr("id"));
				removeXSS($("#add1").val(),$("#add1").attr("id"));
				removeXSS($("#add2").val(),$("#add2").attr("id"));
				removeXSS($("#phone").val(),$("#phone").attr("id"));
				removeXSS($("#area").val(),$("#area").attr("id"));
				removeXSS($("#pw1").val(),$("#pw1").attr("id"));
				removeXSS($("#pw2").val(),$("#pw2").attr("id"));
				$("#edit_mypage").submit();
			}

		});
		
		$(".del_list2").hide();
		
		$(".del_list").on("click",function(){
			alert("삭제 요청되었습니다");
			$(".del_list").hide();
			$(".del_list2").show();
		})
	</script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
	<!--주소등록-->
		//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
		function sample4_execDaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var roadAddr = data.roadAddress; // 도로명 주소 변수
					var extraRoadAddr = ''; // 참고 항목 변수

					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraRoadAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraRoadAddr += (extraRoadAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraRoadAddr !== '') {
						extraRoadAddr = ' (' + extraRoadAddr + ')';
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('postcode').value = data.zonecode;
					document.getElementById("add1").value = roadAddr;
					//                                              document
					//                                                    .getElementById("add2").value = data.jibunAddress;
					document.getElementById("add2").value = "";//도로명만 받기

				}
			}).open();
		}
	</script>

	<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
</body>
</html>



