<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="styles.css">
<%@ include file="header.jsp" %>

<div class="container">
	<h3>cm를 인치로 변환</h3>
	<form action="result.jsp" method="POST">
		<label for ="num">cm</label>
		<input type="number" id="num" name="num" required="required">
		<input type="submit" value="변환">
	</form>
</div>


<%@ include file="footer.jsp" %>