package com.mpmproject.mympm;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.mympm.domain.MemberVO;
import com.mympm.domain.MusicVO;
import com.mympm.service.MusicService;

@Controller
@RequestMapping("/music")
public class MusicController {

	@Inject
	private MusicService musicService;

	private static final Logger logger = LoggerFactory.getLogger(MusicController.class);

	//음원 메인
	@RequestMapping("/musicMain")
	public String musicMain(Model m, @ModelAttribute("music") MusicVO music,
			HttpServletRequest req,HttpSession session) {
		logger.info("musicMain");
		MemberVO loginUser=(MemberVO)session.getAttribute("loginUser");
		
		int totalCount = this.musicService.getTotalCount(music);
		logger.info("totalCount={}",totalCount);
		music.setTotalCount(totalCount);
		music.setPageSize(5);
		music.setPagingBlock(5);
		music.init();

		logger.info("연산후 page={}",music);
		
		List<MusicVO> musicArr = this.musicService.listMusic(music);
		String loc = "music/musicMain";
		String myctx = req.getContextPath();
		String pageNavi=music.getPageNavi(myctx, loc);
		logger.info("musicArr={}",musicArr);
		m.addAttribute("musicArr",musicArr);
		m.addAttribute("pageNavi",pageNavi);
		m.addAttribute("loginUser",loginUser);
		
		return "music/musicMain";
	}
	
	//음원 추가폼
	@RequestMapping("/musicInsert")
	public String musicInsert(Model m,HttpSession session) {
		MemberVO loginUser=(MemberVO)session.getAttribute("loginUser");
		if(loginUser==null) {
			return "redirect:../login";
		}
		logger.info("musicInsert");
		return "music/musicInsert";
	}

	//음원 수정폼
	@PostMapping("/musicEdit")
	public String musicEdit(Model m,HttpSession session,@RequestParam(value = "midx", defaultValue = "0") int midx) {
		logger.info("music/musicEdit");
		MemberVO loginUser=(MemberVO)session.getAttribute("loginUser");
		
		if (midx == 0 || loginUser == null) {
			return "redirect:musicMain";
		}
		MusicVO editArr = this.musicService.editList(midx);
		m.addAttribute("editArr",editArr);
		return "music/musicEdit";
	}
	
	//음원 수정
	@PostMapping("/musicEditEnd")
	public String musicEditEnd(Model m, @ModelAttribute("music") MusicVO music,
			@RequestParam("mfilename") MultipartFile mfilename, 
			@RequestParam("mafilename") MultipartFile mafilename,
			HttpServletRequest req) {
		if (music == null) {
			return "redirect:musicMain";
		}
		ServletContext app = req.getServletContext();
		String UP_DIR = "C:\\MPMteam\\MPMproject\\src\\main\\webapp\\resources\\music\\";
		String UP_DIR2 = "C:\\MPMteam\\MPMproject\\src\\main\\webapp\\resources\\alnum\\";
		logger.info("UP_DIR={}", UP_DIR);
		
		if(!mfilename.isEmpty() && !mafilename.isEmpty()) {
			//1) 먼저 첨부파일명, 파일크기를 알아내자
			String originFile = mfilename.getOriginalFilename();//원본파일
			String fname = mfilename.getName();//물리적파일명
			String album = mafilename.getOriginalFilename();//원본파일
			String afilename = mafilename.getName();//물리적파일명
			logger.info("album",album);
			
			music.setAfilename(afilename);
			music.setAlbum(album);
			long fsize = mfilename.getSize();
			logger.info("mfilename.getSize={}",mfilename.getSize());
			logger.info("fize={}",fsize);
			double playtime = ((double)fsize * (double)8 / (double)320000)/(double)60;
			logger.info(originFile,", ",fsize);
			
			music.setOriginFilename(originFile);
			music.setFilename(fname);
			music.setFilesize(fsize);
			music.setPlaytime(playtime);
			//2) 파일 업로드 처리
			try {
				mfilename.transferTo(new File(UP_DIR,originFile));
				mafilename.transferTo(new File(UP_DIR2,album));
				logger.info("업로드 성공");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		logger.info("music={}",music);
		int n = this.musicService.editMusic(music);
		
		return "redirect:musicMain";
	}

	//댓글 있는 음원 페이지
	@RequestMapping("/music")
	public String music(Model m,@RequestParam(value = "midx", defaultValue = "0") int midx) {
		logger.info("music/music");
		
		if(midx == 0) {
			return "redirect:musicMain";
		}
		
		int n = this.musicService.updateMReadnum(midx);
		MusicVO musicList = this.musicService.Music(midx);
		m.addAttribute("musicList",musicList);
		return "music/music";
	}

	// 음원 추가
	@PostMapping("/musicInsertEnd")
	public String musicInsertEnd(Model m, @ModelAttribute("music") MusicVO music,
			@RequestParam("mfilename") MultipartFile mfilename, 
			@RequestParam("mafilename") MultipartFile mafilename
			,HttpServletRequest req,HttpSession session) {
		MemberVO loginUser=(MemberVO)session.getAttribute("loginUser");
		int idx_fk=loginUser.getIdx();
		logger.info("loginUser={}",loginUser);
		/*
		 * ← 주파수 처리 – 퓨리에 변환 ( FFT )TCP 연결상태 → mp3 플레이 시간 구하기 Posted on 2013/02/19 by
		 * threadbuilder 재생 시간 = 파일크기(byte 사이즈) * 8 / 비트레이트( 192kbps 는 192000 )
		 * 
		 * – 파일크기가 5127731byte 이고 192kbps 인 mp3에 총 재생시간을 구하는 식은 아래와 같다 213.655 = 5127731
		 * * 8 / 192000 파일크기 = 재생시간*비트레이트/8
		 * 
		 */
		if (music == null) {
			return "redirect:musicInsert";
		}

		music.setIdx_fk(idx_fk);
		
		ServletContext app = req.getServletContext();
		String UP_DIR = "C:\\MPMteam\\MPMproject\\src\\main\\webapp\\resources\\music\\";
		String UP_DIR2 = "C:\\MPMteam\\MPMproject\\src\\main\\webapp\\resources\\alnum\\";
		logger.info("UP_DIR={}", UP_DIR);
		
		if(!mfilename.isEmpty() && !mafilename.isEmpty()) {
			//1) 먼저 첨부파일명, 파일크기를 알아내자
			String originFile = mfilename.getOriginalFilename();//원본파일
			String fname = mfilename.getName();//물리적파일명
			String album = mafilename.getOriginalFilename();//원본파일
			String afilename = mafilename.getName();//물리적파일명
			logger.info("album",album);
			
			music.setAfilename(afilename);
			music.setAlbum(album);
			long fsize = mfilename.getSize();
			logger.info("mfilename.getSize={}",mfilename.getSize());
			logger.info("fize={}",fsize);
			double playtime = ((double)fsize * (double)8 / (double)320000)/(double)60;
			logger.info(originFile,", ",fsize);
			
			music.setOriginFilename(originFile);
			music.setFilename(fname);
			music.setFilesize(fsize);
			music.setPlaytime(playtime);
			//2) 파일 업로드 처리
			try {
				mfilename.transferTo(new File(UP_DIR,originFile));
				mafilename.transferTo(new File(UP_DIR2,album));
				logger.info("업로드 성공");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		logger.info("music={}",music);
		int n = this.musicService.insertMusic(music);
		return "redirect:musicMain";
	}

	@ExceptionHandler(NullPointerException.class)
	public String excepitonHandler(Exception ex) {
		
		return "common/errorAlert";
	}
	
	//음원 파일 다운로드
	@RequestMapping("/fileDown")
	public void fileDownload(HttpServletRequest req, HttpServletResponse res) throws FileNotFoundException, IOException {
		//다운로드 할 파일명 받기
		logger.info("filename={}",req.getParameter("originFilename"));
		String originFilename = req.getParameter("originFilename")+".mp3";
		
		res.setContentType("application/octet-stream");
		//한글파일명 처리
		String origin_en = new String(originFilename.getBytes(), "ISO-8859-1");
		String str = "attachment; filename="+origin_en;
		res.setHeader("Content-Disposition", str);
		
		String UP_DIR = "C:\\MPMteam\\MPMproject\\src\\main\\webapp\\resources\\music\\";
		
		File file = new File(UP_DIR, originFilename);
		FileCopyUtils.copy(new FileInputStream(file), res.getOutputStream());
	}

	// 음원 댓글 매핑-------------------------------------------------------------
	@RequestMapping("/mreviewInsert")
	public void mreviewInsertView() {
	}

	@RequestMapping("/mreviewList")
	public void mreviewListView() {
	}
}