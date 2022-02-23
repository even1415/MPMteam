<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <meta charset="utf-8">
<!-- playbar -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script src="${myctx}/resources/JavaScript/playbarJS.js"></script>
<script>

</script>

        <div class="playbar">
            <div class="music-left" >
                <div class="musicprofile">
                    <img src="${pageContext.request.contextPath}/resources/img/ss.png" class="musicprofile1" id="albumimg">
                </div>
                <input type="hidden" id="albumimg-hidden" value="${pageContext.request.contextPath}/resources/album/${musicList.album}">
                <input type="hidden" id="title-hidden" value="${musicList.albumtitle}">
                <input type="hidden" id="artist-hidden" value="${musicList.martist}">
                <input type="hidden" id="music-hidden" value="${pageContext.request.contextPath}/resources/music/${musicList.filename}">
                
                <div class="artist">

                    <div class="music-title">
                        <span id="music-title"></span>
                    </div>
                    <div class="music-artist">
                        <span id="music-artist"></span>
                    </div>
                    
                </div>

                 </div>
            <div class="music-center">
            <div>
            	<audio id="audioContainer" src=""> <!-- audio play를 위함 -->
      			</audio>
            </div>
                <div class="center-bt">
                    <button class="repeat-bt" onclick="repeatplay()"></button>
                    <button class="previous-bt"></button>
                    <button class="play-bt" id="play-bt" onclick="musicplay()"></button>
                    <button class="stop-bt" id="stop-bt" onclick="musicpause()"></button>
                    <button class="next-bt"></button>
                    <button class="shuffle-bt"></button>
                </div>

                <div class="time">
                	<span id="currentTime"></span>
                	<progress value="0" id="progress"></progress>
                    <!-- <span>&nbsp;/&nbsp;</span> -->
                    <span id="totalTime"></span>
                </div>

            </div>
            <div class="music-right">

                <div class="heart">
                    <button class="heart-bt"></button>
                </div>
              <div class="sound">
                <button class="sound-bt"></button>
              </div>
              <div class="soundvolume">
                  <input id="soundvolume" type="number" value="100" min="0" max="100" step="10"
                  onClick="changeVol();" onkeyup="if(window.event.keyCode==13){changeVol()}">
              </div>
                <div class="mymusic">
                    <button class="list-bt"></button>
                </div>

            </div> <!-- music-right=================== -->
        </div>
      

        <!--footer----------------------------------------------------->
      <section id="main" role="main" class="section_home w955">
<footer id="footer" role="contentinfo" class="">
	<div class="footer_inner">
		<div class="flo_fnb">
			<ul>
				<li><a href="/intro" class="">MPM 소개</a></li>
				<li><a href="/help/notice/1" class="">고객센터</a></li>
				<li><a href="/help/faq/0/1" class="">공지사항</a></li>
				<li><a href="/download/pc/app" class="">MPM player</a></li>
			</ul>
		</div>
		<div class="social_area">
			<ul>
				<li><a href="#"
					target="_blank" class="btn-facebook"><span class="hidden">facebook
							</span></a></li>
				<li><a
					href="#"
					target="_blank" class="btn-instagram"><span class="hidden">instagram
							</span></a></li>
				<li><a
					href="#"
					target="_blank" class="btn-youtube"><span class="hidden">youtube
							</span></a></li>
				<li><a href="#" target="_blank"
					class="btn-twitter"><span class="hidden">twitter</span></a></li>
			</ul>
		</div>
		<div class="policy_area" style="margin-left:-37px">
			<ul>
				<li><a href="http://www.dreamuscompany.com/" target="_blank">&nbsp;회사소개</a></li>
				<li><a href="#">&nbsp;이용약관</a></li>
				<li><a href="#"><em>&nbsp;개인정보 처리방침</em></a></li>
				<li><a href="#">&nbsp;청소년 보호정책</a></li>
			</ul>
		</div>
		<address>
			<div class="inner">
				<div class="address_top">
					<span>대표이사: 조연후</span><span>이메일 : dusgn23574@naver.com</span><span>사업자 등록 번호&nbsp;: xxxx-xxxx-xxxx</span>
				</div>
				<div class="address_bottom">
					<em class="blind">�ּ� �� ��ǥ��ȣ</em><span>오시는 길: 서울시 마포구 양화로 127
						</span><span>대표전화: 1212-9898</span><br>
					<span>팩스 : 02-xxx-xxxx </span><span>대표전화: 1212-4545</span>
				</div>
			</div>
		</address>
		<p class="copyright">
			<span>Copyright</span>ALL RIGHTS RESERVED
		</p>
		<p class="browser_support"> MPM All rights reserved.
		</p>
	</div>
</footer>
</section>
</body>
</html>