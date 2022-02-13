<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" type=text/css href="${pageContext.request.contextPath}/resources/css/MPMteam_Index.css">

<c:import url="/common/top" />
<c:import url="/common/carousel" />


<section class="index-section">
	<div class="row" style="user-select: auto;">
		<div class="col-md-6" style="user-select: auto;">
			<div
				class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"
				style="user-select: auto;">
				<div class="col p-4 d-flex flex-column position-static"
					style="user-select: auto;">
					<strong class="d-inline-block mb-2 text-primary"
						style="user-select: auto;">MPM이 추천하는 음악</strong>
					<h3 class="mb-0" style="user-select: auto;">스르륵 잠이 들고 싶을 때,</h3>
					<div class="mb-1 text-muted" style="user-select: auto;"></div>
					<p class="card-text mb-auto" style="user-select: auto;">A good song to listen to when you can't sleep</p>
				</div>
				<div class="col-auto d-none d-lg-block" style="user-select: auto;">
					<div class="rect1"></div>
					
				</div>
			</div>
		</div>
		
		
		<div class="col-md-6" style="user-select: auto;">
			<div
				class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"
				style="user-select: auto;">
				<div class="col p-4 d-flex flex-column position-static"
					style="user-select: auto;">
					<strong class="d-inline-block mb-2 text-success"
						style="user-select: auto;">더 많은 음악을 알고 싶다면?</strong>
					<h3 class="mb-0" style="user-select: auto;">당신의 음악 취향을 공유하세요.</h3>
					<div class="mb-1 text-muted" style="user-select: auto;"></div>
					<p class="mb-auto" style="user-select: auto;">Share your music taste!</p>
				</div>
				<div class="col-auto d-none d-lg-block" style="user-select: auto;">
					<div class="col-auto d-none d-lg-block" style="user-select: auto;">
					<div class="rect2"></div>
				</div>
			</div>
		</div>
	</div>

</section>
<section class="index-section2" >
	

	
</section>

<c:import url="/common/foot" />

