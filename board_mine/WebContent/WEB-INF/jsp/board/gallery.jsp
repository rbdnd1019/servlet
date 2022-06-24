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
        <h2>갤러리</h2>
        <table class="board">
        <div class="card-header">
			<a class="btn btn-primary float-end" style="float: right;"  href="register${page.cri.params2}">
				<i class="fas fa-edit"></i>
                글 작성
            </a>
            <div class="col-2">
            	<select class="form-select form-amount" >
					<option ${page.cri.amount == 5 ? 'selected' : '' } value="5">5개씩 보기</option>
				  	<option ${page.cri.amount == 10 ? 'selected' : '' } value="10">10개씩 보기</option>
				  	<option ${page.cri.amount == 25 ? 'selected' : '' } value="25">25개씩 보기</option>
				  	<option ${page.cri.amount == 50 ? 'selected' : '' } value="50">50개씩 보기</option>
				</select>
			</div>
		</div>
       
      <div class="card-body">
         <div class="gallery-class row p-5">
            <c:forEach items="${boards}" var="board">
            <div class="col-3 card p-1 border-0">
               <a href="get${page.cri.params2}&bno=${board.bno}">
                  <div>
                     <img onerror="this.src='${pageContext.request.contextPath}/images/noimage.png'" class="card-img-top" src="${pageContext.request.contextPath}/display?uuid=s_${board.attachs[0].uuid}&path=${board.attachs[0].path}" alt="${board.attachs[0].origin}">
                     <div class="card-body">
                        <h4 class="card-title small text-truncate">${board.title}</h4>
                        <p class="card-text">
                           <span class="text-truncate">${board.writer }</span>
                           <span class="small float-end">${board.regDate}</span>
                        </p>
                     </div>
                  </div>
               </a>
             </div>
            </c:forEach>
          </div>
       </div>
            
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
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>