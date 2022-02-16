<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" type=text/css
	href="${pageContext.request.contextPath}/resources/css/MPMteam_Index.css">

<c:import url="/common/top" />
<c:import url="/common/carousel" />

<section class="index-section5">
	<div class="row" style="user-select: auto;">
		<div class="col-md-7" id="section2" style="user-select: auto;">
			<div
				class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"
				style="user-select: auto;">
				<div class="col p-4 d-flex flex-column position-static"
					style="user-select: auto;">
					<h3 class="mb2-1" style="user-select: auto;"></h3>
					<strong class="d-inline-block mb-2"
						style="user-select: auto; color: silver;"></strong>
					<div class="mb-1 text-muted" style="user-select: auto;"></div>
					<p class="card-text mb-auto" style="user-select: auto;"></p>
				</div>
				<div class="col-auto d-none d-lg-block" style="user-select: auto;">
					<div class="rect_mpm"></div>
				</div>
			</div>
		</div>
	</div>
</section>
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
					<p class="card-text mb-auto" style="user-select: auto;">A good
						song to listen to when you can't sleep</p>
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
					<p class="mb-auto" style="user-select: auto;">Share your music
						taste!</p>
				</div>
				<div class="col-auto d-none d-lg-block" style="user-select: auto;">
					<div class="col-auto d-none d-lg-block" style="user-select: auto;">
						<div class="rect2"></div>
					</div>
				</div>
			</div>
		</div>
</section>
<section class="index-section3">
	<div class="row" style="user-select: auto;">
		<div class="col-md-7" id="section2" style="user-select: auto;">
			<div
				class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"
				style="user-select: auto;">
				<div class="col p-4 d-flex flex-column position-static"
					style="user-select: auto;">
					<h3 class="mb2-1" style="user-select: auto;">소통이 필요하다면?</h3>
					<strong class="d-inline-block mb-2"
						style="user-select: auto; color: silver;"></strong>
					<div class="mb-1 text-muted" style="user-select: auto;"></div>
					<p class="card-text mb-auto" style="user-select: auto;"></p>
				</div>
				<div class="col-auto d-none d-lg-block" style="user-select: auto;">
					<div class="rect1_3"></div>
				</div>
			</div>
		</div>
	</div>
</section>


<section class="index-section2">
	<div class="row" style="user-select: auto;">
		<div class="col-md-7" id="section2" style="user-select: auto;">
			<div
				class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"
				style="user-select: auto;">
				<div class="col p-4 d-flex flex-column position-static"
					style="user-select: auto;">
					<h3 class="mb2-1" style="user-select: auto;">내가 원했던 곡이 여기에~</h3>
					<strong class="d-inline-block mb-2"
						style="user-select: auto;"> 어릴 때 우연히 들었던 명곡. 그 곡을 찾는데에 한 걸음 다가가게 해줄 MPM! 
						</strong>
					<div class="mb-1 text-muted" style="user-select: auto;"></div>
					<p class="card-text mb-auto" style="user-select: auto;"></p>
				</div>
				<div class="col-md-2 d-none d-lg-inline"
					style="user-select: auto; display: inline-block;">
					<div class="rect1_2"></div>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="index-section4">
      <h3 class="mb2-1" style="user-select: auto;">※방문 시 주의사항</h3>
        <div class="panel-group" id="accordion">
            <div class="panel panel-primary">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
                  1. 개인정보 처리방침</a>
                </h4>
              </div>
              <div id="collapse1" class="panel-collapse collapse in ">
                <div class="panel-body">MPM컴퍼니(이하 "회사"라 함)가 제공하는 MPM서비스는 고객님의 개인정보를 소중하게 생각하고 있습니다.<br>
                회사는 고객님의 개인정보를 보호하기 위하여 보안 문제를 꼼꼼히 검토하며, 항상 최선을 다해 안전하게 처리하고 있습니다.</div>
              </div>
            </div>
            <div class="panel panel-primary">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
                 	2. 커뮤니티 내 욕설금지</a>
                </h4>
              </div>
              <div id="collapse2" class="panel-collapse collapse">
                <div class="panel-body">
- 심한 욕설 또는 저속한 표현으로 이용자 다수에게 불쾌감을 주는 경우
<br>
- 공포심이나 불안감, 불쾌감과 모욕감을 유발하는 내용이 포함된 게시물
<br>
- 타인의 신체, 외모, 취향 등에 대해 경멸의 의미를 담아 비하하고 모욕하는 내용의 게시물
<br>
- 특정 계층, 지역, 국민, 종교를 근거 없이 비하하거나 비방하는 내용의 게시물
<br>
- 장애인이나 여성 등 사회적 소수자를 근거 없이 비하하거나 비방하는 내용의 게시물</div>
              </div>
            </div>
          </div>
</section>

<c:import url="/common/foot" />

