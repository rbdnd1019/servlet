<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<jsp:include page="../common/head.jsp"/>
</head>
<body>
	<jsp:include page="../common/nav.jsp"/>
   <div class="all">
        <h2>고객의 소리</h2>
        <table class="board">
        <div class="card-header">
                    	<a class="btn btn-primary float-end" style="float: right;"  href="register${page.cri.params2}">
                        <!-- <i class="fas fa-table me-1"></i> -->
                        <i class="fas fa-edit"></i>
                        글 작성
                        </a>
                        <div class="col-1">
	                        <select class="form-select form-amount" >
							  <option ${page.cri.amount == 5 ? 'selected' : '' } value="5">5개씩 보기</option>
							  <option ${page.cri.amount == 10 ? 'selected' : '' } value="10">10개씩 보기</option>
							  <option ${page.cri.amount == 25 ? 'selected' : '' } value="25">25개씩 보기</option>
							  <option ${page.cri.amount == 50 ? 'selected' : '' } value="50">50개씩 보기</option>
							</select>
						</div>
                    </div>
        
        <thead>
        	<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>등록일</th>
			</tr>
         </thead>
         <c:forEach items="${boards}" var="board">
			<tr>
				<td>${board.bno}</td>
				<td><a href="get${page.cri.params2}&bno=${board.bno}">${board.title}</a> <span class="text-secondary small">${board.replyCnt}</span></td>
				<td ${empty board.writer ? 'class="text-muted small"' : ''}>${empty board.writer ? '(탈퇴회원)' : board.writer}</td>
				<td>${board.hitcount}</td>
				<td>${board.regDate}</td>
			</tr>
		</c:forEach>
		
            
        </table>
        <div class="pagination justify-content-center">
        <ul class="pagination">
	        <c:if test="${page.prev}">
			<a class="page-link " href="list${page.cri.params}&pageNum=${page.cri.pageNum-1}">prev</a>
	        </c:if>
	        <c:forEach begin="${page.start}" end="${page.end}" var="p">
			<a class="page-link " href="list${page.cri.params}&pageNum=${p}">${p}</a>
	        </c:forEach>
	        <c:if test="${page.next}">
			<li class="page-item "><a class="page-link " href="list${page.cri.params}&pageNum=${page.cri.pageNum+1}">next</a></li>
	        </c:if>
        </ul>
         </div>
    </div>
    <script>
        $(function() {
        	$(".form-amount").change(function () {
				location.href = 'list?amount='+ $(this).val() + "&category=${page.cri.category}&pageNum=${page.cri.pageNum}";
			});
        })
    </script>
</body>
</html>