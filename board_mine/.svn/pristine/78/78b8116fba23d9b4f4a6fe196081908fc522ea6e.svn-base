<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<jsp:include page="../common/head.jsp"/>
</head>
<body>
	<jsp:include page="../common/nav.jsp"/>
    <div class="contract">
        <h2>서비스 약관에 동의해주세요. </h2>
        <form method="post">
                <ul>
                    <li>
                        <div class="box"><label><input type="checkbox" id="chk1" >만 14세 이상입니다.</label></div>
                    </li>
                    <li>
                        <div class="box"><label><input type="checkbox" id="chk2"><span>[필수]</span> 계정 약관</label></div>
                    </li>
                    <li>
                        <div class="box"><label><input type="checkbox" id="chk3"><span>[필수]</span>통합 서비스 약관</label></div>
                        <p class="contract-text bottom">본 약관은 회사가 제공하는 서비스 등에 공통 적용되며, 본 약관에 동의함으로써 해당 서비스들을 별도 이용계약 체결 없이 이용할 수 있습니다.</p>
                    </li>
                    <li>
                        <div class="box"><label><input type="checkbox" id="chk4"><span>[필수]</span>개인정보 수집 및 이용 동의</label></div>
                    </li>
                    <li>
                        <div class="box"><label><input type="checkbox"><span>[선택]</span>위치정보 수집 및 이용 동의</label></div>
                    </li>
                </ul>
                <div class="buttom"><a href="${cp}/member/join" id="chek" >동의</a></div>
        </form>
    </div>
    <script>
    $("#chek").click(function(){

        if($("#chk1").is(":checked")){

        } else { 
            alert("이용약관을 모두 체크해주세요")
            return false;
        }

        if($("#chk2").is(":checked")){

        } else { 
            alert("이용약관을 모두 체크해주세요")
            return false;
        }
        if($("#chk3").is(":checked")){

        } else { 
            alert("이용약관을 모두 체크해주세요")
            return false;
        }
        if($("#chk4").is(":checked")){

        } else { 
            alert("이용약관을 모두 체크해주세요")
            return false;
        }
    });
    </script>
</body>
</html>