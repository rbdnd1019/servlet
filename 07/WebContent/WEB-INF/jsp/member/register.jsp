<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
    // 유효성 검증 예정
    window.onload = function() {
        console.log(document.frm.id.value)
        console.log(document.frm.pw.value)
        console.log(document.frm.pwChk.value)
        document.frm.onsubmit = function() {
            if(!document.frm.id.value.length) {
                alert("아이디를 입력하세요")
                return false;
            }
            else if(document.frm.pwd.value !== document.frm.pwChk.value) {
                alert("비밀번호를 확인하세요")
                return false;
            }
            
        }
    }
</script>
</head>
<body>
    <form name="frm" method="post">
    	<h1>회원가입</h1>
        <p>아이디 : <input name="id"></p>
        <p>비밀번호 : <input type="password" name="pwd"></p>
        <p>비밀번호 확인 : <input type="password" name="pwChk"></p>
        <p>이름 : <input name="name"></p>
        <p>이메일 : <input name="email"></p>
        <button>회원가입</button>
    </form>
</body>
</html>