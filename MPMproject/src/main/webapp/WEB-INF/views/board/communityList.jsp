<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="/common/top"/>
	 <div class="container">
            <form name="community_form"action="boardWrite">
                <div class="ctheader">
                    <h1 class="cth1">커뮤니티</h1>
                    <div class="ctoption">
                        <select class="ctfind" name="findtype">
                            <option value="0"> 전체 </option>
                            <option value="1">제 목</option>
                            <option value="2">작 성 자</option>
                            <option value="3">글 내 용</option>
                        </select>
                        <input type="text" id="ctsearch">
                        <button id="inquiry">조회</button>
                    </div>
                </div>
            </form>
            <button id="completion">글쓰기</button>
            <c:forEach var="ct" items="${ctreadList}">
            <table border="1" bordercolor="blue" class="cttable1">
                <th style="width:150px;background-color: #3D56B2;color: white;">글번호</th>
                <th style="width:550px;background-color: #3D56B2;color: white;">제목</th>
                <th style="background-color: #3D56B2;color: white;">작성자</th>
                <th style="background-color: #3D56B2;color: white;">조회수</th>
                <th style="background-color: #3D56B2;color: white;">등록일</th>
                <tr>
                    <td>${ct.ct_idx}</td>
                    <td><a href="../board/communityView">${ct.ct_title}</a></td>
                    <td>${ct.ct_writer}</td>
                    <td>${ct.ct_readnum}</td>
                    <td>${ct.ct_date}</td>
                </tr>
            </table>
            </c:forEach>
            <ul id="ctlist">
                <li><button id="ctpage" style="width: 30px;
                    background-color: #3D56B2;color: white;"><</button></li>
                <li><button id="ctpage" style="width: 30px;
                    background-color: #3D56B2;color: white;">1</button></li>
                <li><button id="ctpage" style="width: 30px;
                    background-color: #3D56B2;color: white;">2</button></li>
                <li><button id="ctpage" style="width: 30px;
                    background-color: #3D56B2;color: white;">3</button></li>
                <li><button id="ctpage" style="width: 30px;
                    background-color: #3D56B2;color: white;">4</button></li>
                <li><button id="ctpage" style="width: 30px;
                    background-color: #3D56B2;color: white;">5</button></li>
                <li><button id="ctpage" style="width: 30px;
                    background-color: #3D56B2;color: white;">></button></li>
            </ul>
            <button id="tennext" type="submit">10개씩 보기</button>
        </div>
<script>
	$(function(){
		$('#completion').on('click',function(e){
			location.href = '../admin/boardWrite'
		});
	})   
	
	
</script>
<c:import url="/common/foot"/>