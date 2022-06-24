<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<jsp:include page="../common/head.jsp"/>
</head>
<body>
	<jsp:include page="../common/nav.jsp"/>
   <h2>게시글 작성</h2>
   <form method="post" enctype="multipart/form-data">
	    <div class="write">
	        <div  class="title">
	            <div class="line top"></div>
	            <label for="title">title</label>
	            <input type="text" id="title" name="title"  value="${board.title}" >
	            <div class="line middle"></div>
	            <label for="content">content</label>
	            <textarea id="content" name="content" style="height: 100px" placeholder="내용을 입력해주세요." class="content" >${board.content}</textarea>
	            <div class="line middle"></div>
	            <label for="writer">writer</label>
	            <input type="text" id="writer"name="writer" value="${member.id}" readonly="readonly">
	            <div class="line middle"></div>
	            <label for="file">attach</label>
	            <input type="file" id="file" name="file" multiple="multiple" >
	            <input type="hidden" name="amount" value="${cri.amount}">
			  	<input type="hidden" name="category" value="${cri.category}">
			  	<input type="hidden" name="pageNum" value="${cri.pageNum}">
                <button type="submit" href="${cp}board/list" class="btn btn-primary " >글 쓰기</button>
                <a href="${cp}board/list" class="btn btn-light ">취소</a>
	        </div>
	    </div>
    </form>
</body>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</html>