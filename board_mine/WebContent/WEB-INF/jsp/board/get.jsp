<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  	
	<jsp:include page="../common/head.jsp"/>
</head>
<body>
	<jsp:include page="../common/nav.jsp"/>
	<form>
	    <div class="detail">
	       <div class="line top"></div>
	       <div>
				<label for="bno"> bno</label>
	            <input class="detail-text"  type="text" id="bno" name="bno" value="${board.bno}"  disabled>
	        </div>
	        <div class="line middle"></div>
	        <div>
	        	<label for="title">title</label>
	           	<input class="detail-text" type="text" id="title" name="title" value="${board.title}" disabled> 
	        </div>
	        <div class="line middle"></div>
	        <div>
	        	<label for="regDate">regDate</label>
	           	<input class="detail-text" type="text" id="regDate" name="regDate" value="${board.regDate}" disabled> 
	        </div>
	        <div class="line middle"></div>
	        <div>
	        	<label for="writer">writer</label>
	            <input class="detail-text" type="text" id="writer" name="writer" value="${board.writer}" disabled>
	        </div>
	        <div class="line middle"></div>
	        <div>
	        	<label class="content" >content</label>
	        	<c:if test="${cri.category==3}">
			    <div>
			    	<c:forEach items="${board.attachs}" var="attach">
			    		<c:if test="${attach.image}">
			    		<div class="text-center">
			    			<img src="${pageContext.request.contextPath}/display?uuid=${attach.uuid}&path=${attach.path}" alt="${attach.origin}">
			    		</div>
			    		</c:if>
			    	</c:forEach>
			    </div>
			    </c:if>
	            <textarea id="content" name="contemt" disabled> ${board.content}</textarea>
	        </div>
	        <div class="mb-3">
			    <label for="writer" class="form-label"><i class="fas fa-file-archive"></i> attach</label>
				<ul class="list-group">
					<c:forEach items="${board.attachs}" var="attach">
					  <li class="list-group-item"><i class="fas fa-download"></i> <a href="${cp}/download${attach.params}"> ${attach.origin}</a></li>
					</c:forEach>
				</ul>
			</div>
	        <div class="line bottom"></div>
			<span class="form-label bm-4"><i class="fas fa-user"></i> replies</span>
			<div class="row p-4">
				<div class="col-10 ">
					<textarea class="w-100" id="replyContent"></textarea>
				</div>
			 </div>
		  	<div class="col-2  ">
				<button class="btn btn-primary" id="btnReplyReg" type="button">글 등록</button>
			</div>
			  <ul class="list-group list-group-flush my-3 small replies">
			  			  
			  </ul>
	        <div class="line bottom"></div>
	        <div class="button">
	            <div><a href="list${cri.params2}">목록</a></div>
	            <c:if test="${not empty member && member.id == board.writer}">
	            <div><a href="modify${cri.params2}&bno=${board.bno}">수정</a></div>
	            <div><a href="remove${cri.params2}&bno=${board.bno}" onclick="return confirm('삭제하시겠습니까?')">삭제</a></div>
	            </c:if>
	        </div>
	    </div>
    </form>
    <script>
			const cp = '${pageContext.request.contextPath}';
	
	
			// replyService.get(36, function(data) {
			//     console.log(data);
			// }, cp);
			
			// replyService.add({bno:201, content:'get.jsp 내용', writer:'javaman'}, function(data){
			//     console.log(data)
			// }, cp);
	
			$(function(){
				// $("#replyModal").modal("show");
				const bno = '${board.bno}';
				  showList();
	
				function showList(){
					replyService.list(bno, function(data) {
						console.log(data);
						var str = "";
						for(var i in data){
							str +='                    <li class="list-group-item" data-rno="'+ data[i].rno +'">';
							str +='                        <div class="list-group-item list-group-item-success small">';
							str +='                            <span>'+ data[i].writer +'</span>';
							str +='                            <span class="small float-end">' + data[i].regDate + '</span>';
							str +='                            <span class="float-end mx-2 btnReplyRemove"><i class="fas fa-minus-circle text-danger" style="cursor:pointer"></i></span>';
							str +='                        </div>';
							str +='                        <div class="list-group-item">' + data[i].content + '</div>';
							str +='                    </li>';
						}
						$(".replies").html(str);
					}, cp);
				}

				// 댓글 삭제
				$(".replies").on("click", ".btnReplyRemove", function() {
					var rno = $(this).closest("li").data("rno");
					var reply = {"rno":rno};
					replyService.remove(reply, function(data) {
						alert("댓글이 삭제되었습니다.")
						showList();
					}, cp); 
				});
				
				// 댓글 등록 버튼 클릭 이벤트
				$("#btnReplyReg").click(function(){
					var reply = {bno:bno, content:$("#replyContent").val(), writer: '${member.id}'}
					replyService.add(reply, function(data){
						showList();
						$("#replyContent").val("");
						alert("댓글이 등록되었습니다.")
					}, cp);
				});
			});
			</script>
    
</body>

</html>