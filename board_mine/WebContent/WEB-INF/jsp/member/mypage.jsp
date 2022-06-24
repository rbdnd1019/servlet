<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<jsp:include page="../common/head.jsp"/>
</head>
<body>
	<jsp:include page="../common/nav.jsp"/>
	<form method="post">
		<div class="login">
	        <h3><label for="id">아이디</label></h3>
	        <input type="text" class="input" placeholder="아이디" id="id" name="id" value="${memberInfo.id}" readonly="readonly">
	    
	        <h3><label for="inputPassword">비밀번호</label></h3>
	        <input type="password" class="input" placeholder="비밀번호" name="pw" id="inputPassword">
	        
	        <h3><label for="inputPasswordConfirm">비밀번호 확인</label></h3>
	        <input type="password" class="input" placeholder="비밀번호 확인" name="pw2" id="inputPasswordConfirm">
	        
	        <h3><label for="name">이름</label></h3>
	        <input type="text" class="input" placeholder="이름" id="name" name="name" value="${memberInfo.name}">
	        
	        <h3><label for="email">이메일</label></h3>
	        <input type="text" class="input" placeholder="이메일" id="email" name="email" value="${memberInfo.email}" readonly="readonly" >
	        <c:if test="${memberInfo.auth == 0 }">
	        <button type="submit" id="btnEmail">이메일 인증</button>
	        </c:if>
	        <c:if test="${memberInfo.auth == 1}">
	        <button type="button" id="btnEmail" disabled>인증된 이메일</button>
	        </c:if>
	        <input type="hidden" value="1" id="chkEmail">
	        
	        <h3><label for="name">주소</label></h3>
	        <button id="btnSearchAddr" type="button">검색하기</button>
	        <input type="text" class="input" id="roadAddr" name="roadAddr" readonly>
	        <input type="text" class="input" id="addrDetail" name="addrDetail" readonly>
	        
	        <input type="hidden" name="si" id= "si">
			<input type="hidden" name="sgg" id= "sgg">
			<input type="hidden" name="emd" id= "emd">
			<input type="hidden" name="zipNo" id= "zipNo">
			<input type="hidden" name="roadFullAddr" id= "roadFullAddr">
			<input type="hidden" name="jibunAddr" id= "jibunAddr">
	        
	        <div class="button">
	            <button href="${cp}index">수정하기</button>
	            <button href="${cp}index" formaction="secession" >탈퇴하기</button>
	        </div>
	    </div>
    </form>
    
    <script>
        	$(function() {
        		var cp = '${pageContext.request.contextPath}';
        		$("#btnSearchAddr").click(function() {
                    var pop = window.open("${pageContext.request.contextPath}/juso","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
                });
        		
        		$("#btnEmail").click(function(){
        			var $btnEmail = $(this);
        			var str = '<img src="https://i.stack.imgur.com/qq8AE.gif" width="24px">';
        			console.log("clicked!")
        			var data = {email : $("#email").val(), id : $("#id").val()}
        			$.ajax(cp + "/member/memberAuth", {
        				data : data,
        				method : "get",
        				beforeSend : function() {
        					$btnEmail.prop("disabled", true).html(str+"발송중");	
        				},
        				success : function(data) {
        					$btnEmail.prop("disabled", false).html("이메일 인증");
        					console.log(data);
        				}
        			})
        		});
        	})
            function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
                $("#si").val(siNm);
                $("#sgg").val(sggNm);
                $("#emd").val(emdNm);
                $("#roadAddr").val(roadAddrPart1);
                $("#addrDetail").val(addrDetail);
                $("#zipNo").val(zipNo);
                $("#roadFullAddr").val(roadFullAddr);
                $("#jibunAddr").val(jibunAddr);


}
        </script>
	</body>
</html>