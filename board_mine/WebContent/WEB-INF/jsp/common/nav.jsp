<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
	<div class="header">
        <div class="img"></div>
        <div class="img2"></div>
        <div class="store">
            <ul>
                <li><a href="">매장 안내</a>
                    <ul>
                        <li>서래본점</li>
                        <li>강남교보타워점</li>
                        <li>서울파이낸스점</li>
                        <li>김포공항점</li>
                        <li>역삼GFC점</li>
                        <li>상암DMC점</li>
                        <li>여의도점</li>
                        <li>사당파스텔시티점</li>
                        <li>합정메세나폴리스점</li>
                    </ul>
                <li><a href="${cp}index"> 홈</a></li>
                <li><a href="${cp}board/list?category=1"> 고객의 소리</a></li>
                <li><a href="${cp}board/list?category=2"> 공지사항</a></li>
                <li><a href="${cp}board/list?category=3"> 갤러리</a></li>
                <li><a href="${cp}member/contract">회원가입</a></li>
                <c:if test="${not empty member}">
                <li><a class="dropdown-item" href="${cp}member/myPage">${member.name}정보수정</a></li>
                <li><a class="dropdown-item" href="${cp}member/logout">Logout</a></li>
                </c:if>
                <c:if test="${empty member}">
                <li><a class="dropdown-item" href="${cp}member/login">login</a></li>
                </c:if>
            </ul>
        </div>
    </div>