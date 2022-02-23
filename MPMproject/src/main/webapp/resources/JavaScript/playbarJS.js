function setmusic() {
	if(document.getElementById('audioContainer').src != document.getElementById('music-hidden').value) {
		document.getElementById('audioContainer').src = document.getElementById('music-hidden').value;
		document.getElementById('albumimg').src = document.getElementById('albumimg-hidden').value;
		document.getElementById('music-title').innerHTML = document.getElementById('title-hidden').value;
		document.getElementById('music-artist').innerHTML = document.getElementById('artist-hidden').value;
	}
	//console.log("재생중 : " + document.getElementById('audioContainer').src);
	//console.log("확인용 : " + document.getElementById('music-hidden').value);
	//console.log("곡명 : " + document.getElementById('title-hidden').value);
	//console.log("아티스트 : " + document.getElementById('artist-hidden').value);
	
	setTimeout(function() {
	
	var audio = document.getElementById('audioContainer');
	var current = document.getElementById('currentTime');
	var total = document.getElementById('totalTime');
	
	audio.addEventListener('timeupdate', function () {
                // 오디오의 총 재생시간 얻고 설정
                total.innerHTML
                 = moment(audio.duration * 1000).format("mm:ss");
                // 오디오의 현재 재생시간 얻고 설정
                current.innerHTML
                 = moment(audio.currentTime * 1000).format("mm:ss");
                // 타임 업데이트에 따른 프로그레스 진행정도 표시
                // 최대값 설정
                progress.max = audio.duration;
                // 진행 정도
                progress.value = audio.currentTime;
            });
	
	//setCurTime();
	//setTotalTime();
	musicplay();
	}, 1000);
}

function setCurTime() {
	console.log("setCurTime() : " + document.getElementById('audioContainer').currentTime);
	document.getElementById('currentTime').innerHTML = 
	moment(document.getElementById('audioContainer').currentTime * 1000).format("mm:ss");
}

function setTotalTime() {
	console.log("setTotalTime() : " + document.getElementById('audioContainer').duration);
	document.getElementById('totalTime').innerHTML = 
	moment(document.getElementById('audioContainer').duration * 1000).format("mm:ss");
}

function musicplay() {
	//alert('musicplay() 메소드 진입');
	
	document.getElementById('audioContainer').play();
	$("#play-bt").css('display', 'none');
	$("#stop-bt").css('display', 'inline-block');
	
}

function musicpause() {
	//alert('musicpause() 메소드 진입');
	
	document.getElementById('audioContainer').pause();
	$("#play-bt").css('display', 'inline-block');
	$("#stop-bt").css('display', 'none');
}

function changeVol() {
	var volume;
	
	if(document.getElementById('soundvolume').value>100) {
		document.getElementById('soundvolume').value = 100;
	}
	if(document.getElementById('soundvolume').value<0) {
		document.getElementById('soundvolume').value = 0;
	}
	
	volume = document.getElementById('soundvolume').value;
	//alert(volume);
	
	document.getElementById('audioContainer').volume = volume/100;
}

function repeatplay() {
	 // 반복재생 여부 설정
	 if(document.getElementById('audioContainer').loop) {
		 document.getElementById('audioContainer').loop = false;
	 }
	 else {
		 document.getElementById('audioContainer').loop = true;
	 }
}