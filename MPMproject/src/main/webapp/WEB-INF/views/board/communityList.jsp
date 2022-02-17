<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/MPMteam_Noticelist.css"> 
<c:import url="/common/top"/>
<script>
$(function(){
		$('.newlist_tab ul li').click(function(){
				$('.newlist_tab ul li').removeClass('on')	
				$(this).addClass('on')
			})
		$('.newlist_tab ul li').not(':first-child').click(function(){
			location.href = '${pageContext.request.contextPath}/user/communityWrite'
		})
		
	}) //--------------------------------------
</script>
 <div class="container" style="margin-top:100px;height:100%"> 
	<section id="main" role="main" class="section_help" style="padding-top:80px;height:100%">
		<div>
			<div class="section_inner" style="margin-top:-80px;">
				<h2>MPM</h2>
				<div class="newlist_tab">
					<ul>
						<li class="on"><button type="button" class=" btn_tab_normal ">커뮤니티</button></li>
						<li class=""><button  class=" btn_tab_normal">글쓰기</button></li>
					</ul>
				</div>
			</div>
			<div>
				<div class="help_list">
					<table id="help_list_table" class="help_list_table">
						<caption>고객지원 리스트</caption>
						<colgroup>
							<col width="42">
							<col width="*">
							<col width="100">
							<col width="90">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col" class="info">제목</th>
								<th scope="col">작성일</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<c:forEach var="ct" items="${ctreadList}">
						<tbody id="421">
							<tr class="">
								<td>${ct.ct_idx}</td>
								<td class="info_help"><span>${ct.ct_title}</span></td>
								<td>${ct.ct_date}</td>
								<td><button type="button" class="btn_help_open">내용열기</button></td>
							</tr>
							<!---->
						</tbody>
						</c:forEach>
					</table>
					<div class="paging_w">
						<button type="button">
							<i class="btn_arrow_l press"></i>
						</button>
						<button class="btn_num">
							<a class="active">1</a>
						</button>
						<button class="btn_num">
							<a class="">2</a>
						</button>
						<button class="btn_num">
							<a class="">3</a>
						</button>
						<button class="btn_num">
							<a class="">4</a>
						</button>
						<button class="btn_num">
							<a class="">5</a>
						</button>
						<button type="button">
							<i class="btn_arrow_r"></i>
						</button>
					</div>
					<!---->
				</div>
			</div>
		</div>
	</section>
</div>
<c:import url="/common/foot"/>