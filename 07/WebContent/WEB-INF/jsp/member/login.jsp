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
        document.frm.onsubmit = function() {
        	var id = document.frm.id;
        	var id = document.frm.pwd;
            if(!id.value) {
                alert("아이디를 입력하세요");
                id.focus();
                return false;
            }
            else if(!pwd.value) {
                alert("비밀번호를 입력하세요");
                pwd.focus();
                return false;
            }
        }
    }
</script>
</head>
<body>
<div class="container">
	<div class="col-6 mx-auto">
		<form class="form" method="post" name="frm">
			<label for="userid" class="form-label">아이디</label>
			<input type="text" name="id" id="userid" class="form-control">
			<label for="password" class="form-label">비밀번호</label>
			<input type="password" name="pwd" id="password" class="form-control">
			<div class="d-grid">
				<button class="btn btn-primary bnt-block my-3">로그인</button>
			</div>
				<button type="reset" class="btn btn-danger float-right">다시입력</button>
		</form>
	</div>
</div>
</body>
</html>