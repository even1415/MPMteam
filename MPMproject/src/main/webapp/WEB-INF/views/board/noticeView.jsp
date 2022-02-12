<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type=text/css href="${pageContext.request.contextPath}/resources/css/MPMteam_Noticeview.css">
<c:import url="/common/top"/>
<!--main----------------------------------------------------->
        <div class="container">
            <h1 class="nth1">공지사항</h1>
            <table border="1" bgcolor="blue" class="nttable2">
                <tr>
                    <td style="font-weight:bold;background-color: rgb(189, 224, 255);">글번호</td>
                    <td style="background-color: rgb(189, 224, 255);">1</td>
                    <td style="font-weight:bold;background-color: rgb(189, 224, 255);">제목</td>
                    <td style="background-color: rgb(189, 224, 255);">제목창입니다</td>
                    <td style="font-weight:bold;background-color: rgb(189, 224, 255);">조회수</td>
                    <td style="background-color: rgb(189, 224, 255);">10</td>
                    <td style="font-weight:bold;background-color: rgb(189, 224, 255);">등록일</td>
                    <td style="background-color: rgb(189, 224, 255);">2022-02-06</td>
                </tr>
                <tr>
                    <td colspan='8' rowspan="2">
                        <p style="font-weight:bold;float:left;margin-left:15px;margin-top: 5px;">글내용</p>
                        <textarea name="ntcontent1" id="ntcontent1"></textarea>
                        <button type="submit" id="ntdelete" style="background-color: #3D56B2;color: white;">글 삭제</button>
                        <button type="submit" id="ntedit" style="background-color: #3D56B2;color: white;">글 수정</button>
                    </td>
                </tr>
                
            </table>
        </div>

<c:import url="/common/foot"/>