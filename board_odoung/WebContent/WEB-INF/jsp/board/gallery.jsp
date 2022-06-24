<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <%@ include file="../common/head.jsp" %>
    </head>
    <body class="sb-nav-fixed">
        <%@ include file="../common/nav.jsp" %>
        <main class="mt-5 pt-5">
            <div class="container-fluid px-4">
                <h1 class="mt-4">Gallery</h1>
                ${boards}
                <div class="card mb-4">
                    <div class="card-header">
                    	<a class="btn btn-primary float-end" href="register${page.cri.params2}">
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
                    <div class="card-body">
                          <div class="gallery-class row p-5">
                             <c:forEach items="${boards}" var="board">
                             <div class="col-3 card p-1 border-0">
                                <a href="get${page.cri.params2}&bno=${board.bno}">
                                   <div class="border">
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
                          
                      
                        <div class="">
                           <ul class="pagination justify-content-center">
                              <c:if test="${page.prev}">
                                  <li class="page-item"><a class="page-link" href="list${page.cri.params}&pageNum=${page.cri.pageNum - 1}">prev</a></li>
                              </c:if>
                               <c:forEach begin="${page.start}" end="${page.end}" var="p">
                                  <li class="page-item ${p == page.cri.pageNum ? 'active' : ''}"><a class="page-link" href="list${page.cri.params}&pageNum=${p}">${p}</a></li>
                               </c:forEach>
                               <c:if test="${page.next}">
                                  <li class="page-item"><a class="page-link" href="list${page.cri.params}&pageNum=${page.cri.pageNum + 1}">next</a></li>
                               </c:if>
                     		</ul>
                        </div>
                        
                    </div>
                </div>
            </div>
        </main>
        <%@ include file="../common/footer.jsp" %>
        <script>
        $(function() {
        	$(".form-amount").change(function () {
				location.href = 'list?amount='+ $(this).val() + "&category=${page.cri.category}&pageNum=${page.cri.pageNum}";
			});
        })
        </script>
    </body>
</html>
