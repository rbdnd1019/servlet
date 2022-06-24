<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	        <input type="text" class="input" placeholder="아이디" id="id" name="id">
	        <button type="button" id="btnId">아이디 중복 체크</button>
	        <input type="hidden" value="1" id="chkId"> 
	    
	        <h3><label for="inputPassword">비밀번호</label></h3>
	        <input type="password" class="input" placeholder="비밀번호" name="pw" id="inputPassword">
	        
	        <h3><label for="inputPasswordConfirm">비밀번호 확인</label></h3>
	        <input type="password" class="input" placeholder="비밀번호 확인" name="pw2" id="inputPasswordConfirm">
	        
	        <h3><label for="name">이름</label></h3>
	        <input type="text" class="input" placeholder="이름" id="name" name="name">
	        
	        <h3><label for="email">이메일</label></h3>
	        <input type="text" class="input" placeholder="이메일" id="email" name="email">
	        <button type="button" id="btnEmail">이메일 중복 체크</button>
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
	            <button href="${cp}index">회원가입</button>
	        </div>
	    </div>
    </form>
    
    <script>
        	$(function() {
        		var cp = '${pageContext.request.contextPath}';
        		$("#btnSearchAddr").click(function() {
                    var pop = window.open("${pageContext.request.contextPath}/juso","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
                });
        		
        		$("#btnId").click(function(){
        			console.log("clicked!")
        			var id = {id : $("#id").val()}
        			$.ajax(cp + "/member/findMember", {
        				data : id,
        				method : "get",
        				success : function(data) {
        					console.log(data);
        					$("#chkId").val(data);
        				}
        			})
        		});
        		
        		$("#id").change(function() {
        			$("#chkId").val(1);
        		});
        		
        		$("#btnEmail").click(function(){
        			console.log("clicked!")
        			var email = {email : $("#email").val()}
        			$.ajax(cp + "/member/findMember", {
        				data : email,
        				method : "get",
        				success : function(data) {
        					console.log(data);
        					$("#chkEmail").val(data);
        				}
        			})
        		});
        		
        		$("#Email").change(function() {
        			$("#chkEmail").val(1);
        		});
        		
        		$("form").submit(function() {
        			if($("#chkId").val()) {
        				alert("id 중복 쳌");
        			return false;
        			}
        			if($("#chkEmail").val()) {
        				alert("email 중복 쳌");
        				return false
        			}
        		})
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

		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		/* document.form.roadFullAddr.value = roadFullAddr;
		document.form.roadAddrPart1.value = roadAddrPart1;
		document.form.roadAddrPart2.value = roadAddrPart2;
		document.form.addrDetail.value = addrDetail;
		document.form.engAddr.value = engAddr;
		document.form.jibunAddr.value = jibunAddr;
		document.form.zipNo.value = zipNo;
		document.form.admCd.value = admCd;
		document.form.rnMgtSn.value = rnMgtSn;
		document.form.bdMgtSn.value = bdMgtSn;
		document.form.detBdNmList.value = detBdNmList;
		/** 2017년 2월 추가제공 **/
		/* document.form.bdNm.value = bdNm;
		document.form.bdKdcd.value = bdKdcd;
		document.form.siNm.value = siNm;
		document.form.sggNm.value = sggNm;
		document.form.emdNm.value = emdNm;
		document.form.liNm.value = liNm;
		document.form.rn.value = rn;
		document.form.udrtYn.value = udrtYn;
		document.form.buldMnnm.value = buldMnnm;
		document.form.buldSlno.value = buldSlno;
		document.form.mtYn.value = mtYn;
		document.form.lnbrMnnm.value = lnbrMnnm;
		document.form.lnbrSlno.value = lnbrSlno; */
		/** 2017년 3월 추가제공 **/
		/* document.form.emdNo.value = emdNo; */
		
}
        </script>
</body>
</html>