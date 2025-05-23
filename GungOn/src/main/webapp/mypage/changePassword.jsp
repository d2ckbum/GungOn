<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>비밀번호 변경</title>
    <link rel="stylesheet" href="http://192.168.10.72/jsp_prj/project/common.css">
</head>
<body class="login">
<!-- 상단 메뉴 등 -->
  <c:import url="http://localhost/jsp_prj/project/mainpage/header.jsp"/>
<div class="login-container" style="width: 450px; height: 350px;">
    <h2>비밀번호 변경</h2>
    <form action="login.do" method="post">
        <input type="text" name="username" placeholder="비밀번호" required><br>
        <input type="password" name="password" placeholder="비밀번호 확인" required><br>
        <input type="hidden" style="display: none;"><br>
        <button type="submit">변경하기</button>
    </form>

</div>
<!-- 푸터 -->
  <c:import url="http://localhost/jsp_prj/project/mainpage/footer.jsp"/>
</body>
</html>
