<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<%-- <%@ include file="../common/jsp/site_config.jsp" %> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<!-- 기타 공통 스타일 -->
  <link rel="stylesheet" href="/GungOn/common/css/common.css">
  <c:import url="/common/jsp/external_file.jsp"/>
  <meta charset="UTF-8">
  <title>예약내역 변경/취소</title>
  <style>
  table th,
    table td {
      border: 1px solid #ccc;
      padding: 8px;
      text-align: center;
      font-size: 14px;
    }
  </style>
</head>
<body>

<jsp:include page="/common/jsp/header.jsp"/>

<h2 style="width: 100%; padding-left: 20px; text-align: center;">예약내역 변경/취소</h2>

<!-- ✅ 콘텐츠 영역만 가운데 정렬 -->
<div class="content-wrapper">

  <!-- 행사 정보 -->
  <div class="section">
    <div class="section-title">경복궁 행사</div>
    <div class="event-info">
      <img src="http://localhost/gungon/images/program/4.jpg" alt="경복궁 이미지" style="height: 100%">
      <div class="event-details" style="width: 80%">
        <table>
          <tr><th style="width: 20%">예약자</th><td>홍길동</td></tr>
          <tr><th>예매번호</th><td>20250501133211</td></tr>
          <tr><th>일시</th><td>2025-05-05 11:00</td></tr>
          <tr><th>언어</th><td>한국어</td></tr>
        </table>
      </div>
    </div>
  </div>

  <!-- 결제 내역 -->
  <div class="section">
    <div class="section-title">결제 내역</div>
    <table class="payment-table">
      <thead>
        <tr>
          <th>결제일</th>
          <th>결제 수단</th>
          <th>결제 금액</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>2025-05-01</td>
          <td>카카오페이</td>
          <td>15,000원</td>
        </tr>
      </tbody>
    </table>

    <br>

    <table class="payment-table">
      <thead>
        <tr>
          <th>예매번호</th>
          <th>관람</th>
          <th>예약일시</th>
          <th>해설언어</th>
          <th>예약인원</th>
          <th>결제 금액</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>20250501133211</td>
          <td>경복궁 공식 해설</td>
          <td>2025-05-05 11:00</td>
          <td>한국어</td>
          <td>대인 3명</td>
          <td>15,000원</td>
        </tr>
      </tbody>
    </table>

    <br>

    <table class="person-table">
      <thead>
        <tr><th>인원</th><th>휴대폰 번호</th></tr>
      </thead>
      <tbody>
        <tr><td>대인 1</td><td>010-1234-1234</td></tr>
        <tr><td>대인 2</td><td>010-1234-5678</td></tr>
        <tr><td>대인 3</td><td>010-1111-2222</td></tr>
      </tbody>
    </table>

    <div class="warning">※ 전화번호가 잘못된 경우 고객센터로 문의해주세요.</div>
  </div>

  <!-- 환불 규정 -->
  <div class="section refund-rules">
    <div class="section-title">변경/취소 환불 규정</div>
    <p style="font-size: 13px;">※ 예매 완료된 티켓을 취소/환불하는 경우에는 취소시점에 따라 위약금이 발생하오니 유의해주시기 바랍니다.</p>
    <table>
      <thead>
        <tr><th>구분</th><th>취소/환불내용</th></tr>
      </thead>
      <tbody>
        <tr><td>관람 3일 전</td><td>100% 환불</td></tr>
        <tr><td>관람 2일 전 ~ 1일 전</td><td>50% 환불</td></tr>
        <tr><td>당일 취소</td><td>환불 불가</td></tr>
      </tbody>
    </table>
  </div>

  <!-- 버튼 -->
  <div class="button-group" style="margin-bottom: 30px">
    <button class="btn btn-success">확 인</button>
    <button class="btn btn-info">예약 변경</button>
    <button class="btn btn-danger">예약 취소</button>
  </div>

</div>

<jsp:include page="/common/jsp/footer.jsp"/>

</body>
</html>
