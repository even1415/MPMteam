<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="/common/top"/>
	 <div class="container">
            <form name="notice_form"action="boardWrite">
                <div class="ntheader">
                    <h1 class="nth1">공지사항</h1>
                    <div class="ntoption">
                        <select class="ntfind" name="findtype">
                            <option value="0"> 전체 </option>
                            <option value="1">제 목</option>
                            <option value="2">작 성 자</option>
                            <option value="3">글 내 용</option>
                        </select>
                        <input type="text" id="ntsearch">
                        <button id="inquiry">조회</button>
                    </div>
                </div>
            </form>
            <button id="completion">글쓰기</button>
            <table border="1" bordercolor="blue" class="nttable1">
                <th style="width:150px;background-color: #3D56B2;color: white;">글번호</th>
                <th style="width:550px;background-color: #3D56B2;color: white;">제목</th>
                <th style="background-color: #3D56B2;color: white;">작성자</th>
                <th style="background-color: #3D56B2;color: white;">조회수</th>
                <th style="background-color: #3D56B2;color: white;">등록일</th>
                <tr>
                    <td>1</td>
                    <td>제목이쥬</td>
                    <td>작성자쥬</td>
                    <td>조회수쥬</td>
                    <td>등록일이쥬</td>
                </tr>
            </table>
            <ul id="ntlist">
                <li><button id="ntpage" style="width: 30px;
                    background-color: #3D56B2;color: white;"><</button></li>
                <li><button id="ntpage" style="width: 30px;
                    background-color: #3D56B2;color: white;">1</button></li>
                <li><button id="ntpage" style="width: 30px;
                    background-color: #3D56B2;color: white;">2</button></li>
                <li><button id="ntpage" style="width: 30px;
                    background-color: #3D56B2;color: white;">3</button></li>
                <li><button id="ntpage" style="width: 30px;
                    background-color: #3D56B2;color: white;">4</button></li>
                <li><button id="ntpage" style="width: 30px;
                    background-color: #3D56B2;color: white;">5</button></li>
                <li><button id="ntpage" style="width: 30px;
                    background-color: #3D56B2;color: white;">></button></li>
            </ul>
            <button id="tennext" type="submit">10개씩 보기</button>
        </div>
<script>
	$(function(){
		$('#completion').on('click',function(e){
			location.href = '../admin/boardWrite'
		    
		})
	})   
</script>
<c:import url="/common/foot"/>