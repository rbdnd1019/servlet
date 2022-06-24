<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<jsp:include page="../common/head.jsp"/>
</head>
<body>
	<jsp:include page="../common/nav.jsp"/>
   <h2>게시글 수정</h2>
   <form method="post" >
	    <div class="write">
	        <div  class="title">
	            <div class="line top"></div>
	            <label for="title">bno</label>
	            <input type="text" id="bno" name="bno"  value="${board.bno}" readonly="readonly" >
	            
	            <div class="line middle"></div>
	            <label for="title">title</label>
	            <input type="text" id="title" name="title" value="${board.title}" >
	            
	            <div class="line middle"></div>
	            <label for="content">content</label>
	            <textarea id="content" name="content" style="height: 100px" placeholder="내용을 입력해주세요." class="content" >${board.content}</textarea>
	            
	            <div class="line middle"></div>
	            <label for="regDate">regDate</label>
	            <input type="text" id="regDate" name="regDate" value="${board.regDate}" disabled="disabled">
	            
	            <div class="line middle"></div>
	            <label for="writer">writer</label>
	            <input type="text" id="writer"name="writer" value="${member.id}" disabled="disabled">
	            
	            
	            <div class="button">
	            <input type="hidden" name="amount" value="${cri.amount}">
			  	<input type="hidden" name="category" value="${cri.category}">
			  	<input type="hidden" name="pageNum" value="${cri.pageNum}">
                <button>수정하기</button>
                <a href="${cp}board/list">취소</a>
	            </div>
	        </div>
	    </div>
    </form>
</body>
</html>