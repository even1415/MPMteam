function setmusic() {
	if(document.getElementById('audioContainer').src != document.getElementById('music-hidden').value) {
		document.getElementById('audioContainer').src = document.getElementById('music-hidden').value;
		document.getElementById('music-title').innerHTML = document.getElementById('title-hidden').value;
		document.getElementById('music-artist').innerHTML = document.getElementById('artist-hidden').value;
	}
	console.log("재생중 : " + document.getElementById('audioContainer').src);
	console.log("확인용 : " + document.getElementById('music-hidden').value);
	console.log("곡명 : " + document.getElementById('title-hidden').value);
	console.log("아티스트 : " + document.getElementById('artist-hidden').value);
	
	musicplay();
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