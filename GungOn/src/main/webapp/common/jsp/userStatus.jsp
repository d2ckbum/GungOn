<%@page import="kr.co.gungon.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%

%>
<div class="header">
<div class="user-status-bar">
  <% if (session.getAttribute("userData") != null) { 
	  String loginUser = ((MemberDTO)session.getAttribute("userData")).getId() ;
	  System.out.print(loginUser);
  %>
    <div class="user-status-logged-in" style="position: relative; right: 40px;">
      <span class="user-name"><strong><%= loginUser %></strong>님</span>
      <a href="/GungOn/mypage/mypage.jsp"><img src="/GungOn/common/images/mainpage/user_profile.png">
      <strong>  마이페이지</strong></a>
      <a href="#"><img src="/GungOn/common/images/mainpage/logout.png">
      <strong>  로그아웃</strong></a>
    </div> 
  <% } else { %>
    <div class="user-status-guest" style="position: relative; right: 40px;">
      <a href="/GungOn/signup/sign_up.jsp"><img src="/GungOn/common/images/mainpage/user_profile.png">
      <strong>  회원가입</strong></a>
      <a href="/GungOn/login/login.jsp"><span class="login-icon"><i class="fa fa-user"></i></span>
      <img src="/GungOn/common/images/mainpage/login.png"><strong>  로그인</strong></a>
      
    </div>
  <% } %>
</div>
</div>
