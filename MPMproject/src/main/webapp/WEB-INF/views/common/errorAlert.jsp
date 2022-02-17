<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>

<%-- isErrorPage="true" 로 주는 것에 주의(에러 처리페이지임을 표시) --%>
<% 
	response.setStatus(200); //자체처리 방지(오류가 아니라고 알려줌)
%>

<script>
	alert('<%=exception.getMessage()%>');
	
	history.back();
</script>