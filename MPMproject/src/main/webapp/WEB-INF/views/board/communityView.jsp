<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/MPMteam_Communityview.css">
<c:import url="/common/top"/>
<!--main----------------------------------------------------->
        <div class="container" id="ct">
            <h1 class="cth1">Ŀ�´�Ƽ</h1>
            <div class="row">
		<div class="col-md-10 col-md-offset-1">
			<table class="table table-hover table-striped">
			<c:if test="${ct ne null and not empty ct}">
				<tr>
					<td style="width:20%"><b>�۹�ȣ</b></td>
					<td style="width:30%">${ct.ct_idx}</td>
					<td style="width:20%">�ۼ���</td>
					<td style="width:30%">${ct.ct_date}</td>
				</tr>
				
				<tr>
					<td style="width:20%"><b>�۾���</b></td>
					<td style="width:30%">${ct.ct_writer}</td>
					<td style="width:20%">��ȸ��</td>
					<td style="width:30%">${ct.ct_readnum}</td>
				</tr>
				
				<tr>
					<td style="width:20%"><b>÷������</b></td>
					<td colspan="3">
					
					<a href="#" onclick="goDown('${board.filename}')">${board.originFilename}</a>
					 
					[${board.filesize} bytes]</td>
				</tr>
				<tr>
					<td style="width:20%"><b>����</b></td>
					<td colspan="3">${ct.ct_title}</td>
				</tr>
				<tr style="height:200px;">
					<td style="width:20%"><b>�۳���</b></td>
					<td colspan="3" style="overflow: auto">
					<pre style="border:none">${ct.ct_content}</pre>
					</td>
				</tr>
				</c:if>
				<tr>
					<td colspan="4" class="text-center">
					<button>��� ���</button>
					<button type="button" onclick="goEdit(${ct_idx})">�� ����</button>
					<button type="button" onclick="goDel(${ct_idx})">�� ����</button>
					</td>
				</tr>
				
			</table>
		</div> <!-- .col end -->
	</div> <!-- .row end -->
        </div>
<script>
function goEdit(param){
	alert('���� �Ƴ�');
}

function goDel(param){
	alert('���� �Ƴ�');
}
</script>
<c:import url="/common/foot"/>