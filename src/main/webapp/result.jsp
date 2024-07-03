<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인치 변환기</title>
<link rel="stylesheet" type="text/css" href="resultstyles.css">
</head>
<body>
	<header>
		<h1>변환 결과</h1>
	</header>	
	<div class="result">
	<%
		String numStr = request.getParameter("num");
	
		if (numStr != null) {
			try {
				int num = Integer.parseInt(numStr);
				double sum = (num / 2.54);
				DecimalFormat df = new DecimalFormat("0.00");
				String formatNum = df.format(sum);
				out.print("<p>" + num + "cm 를 인치로 변환 하면 " + formatNum + " 인치</p>");
			} catch (NumberFormatException e) {
				out.print("<p> 유효한 숫자를 입력해 주세요</p>");
			}
		} else {
			out.print("<p> 유효한 숫자를 입력해 주세요</p>");
		}
	%>
	</div>
	<div>
		<a href="form_page.jsp">돌아가기</a>
	</div>
</body>
</html>