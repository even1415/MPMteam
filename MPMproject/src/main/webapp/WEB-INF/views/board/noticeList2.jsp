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
			location.href = '${pageContext.request.contextPath}/admin/boardWrite'
		})
		
	}) //--------------------------------------
</script>
 <div class="container"> 
	<section id="main" role="main" class="section_help" style="padding-top:150px">
		<div>
			<div class="section_inner" style="margin-top:-80px;">
				<h2>MPM</h2>
				<div class="newlist_tab">
					<ul>
						<li class="on"><button type="button" class=" btn_tab_normal ">공지사항</button></li>
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
						<tbody id="421">
							<tr class="">
								<td>421</td>
								<td class="info_help"><span>[서비스점검] 2월 각 은행/증권사 시스템
										작업으로 인한 네이버페이 결제 서비스 일시 중단 안내</span></td>
								<td>2022.02.09</td>
								<td><button type="button" class="btn_help_open">내용열기</button></td>
							</tr>
							<!---->
						</tbody>
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
<c:import url="/common/playbar"/>