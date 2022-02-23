package com.mympm.domain;

import java.sql.Date;

public class MusicVO {

	private int midx;
	private String mtitle;
	private String mcoment;
	private String mlyrics;
	private Date mdate;
	private int mreadnum;
	private String filename;
	private String originFilename;
	private long filesize;
	private double playtime;
	private int idx_fk;
	private String album;
	private String afilename;
	private String martist;
	private String nickname;
	private String albumtitle;

	private int cpage;// ���� ������ ������ ��ȣ
	private int pageSize;// �� ������ �� ������ ��� ����
	private int totalCount;// �� �Խñ� ��
	private int pageCount;// ������ ��

	// DB���� ���ڵ带 ������� ���� ������Ƽ
	private int start;
	private int end;

	// ����¡ �� ó���� ���� ������Ƽ
	private int pagingBlock = 5;// �� �� �� ������ ������ ��
	private int prevBlock;// ���� 5��
	private int nextBlock;// ���� 5��

	public MusicVO() {

	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getMidx() {
		return midx;
	}

	public void setMidx(int midx) {
		this.midx = midx;
	}

	public String getMtitle() {
		return mtitle;
	}

	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}

	public String getMcoment() {
		return mcoment;
	}

	public void setMcoment(String mcoment) {
		this.mcoment = mcoment;
	}

	public String getMlyrics() {
		return mlyrics;
	}

	public void setMlyrics(String mlyrics) {
		this.mlyrics = mlyrics;
	}

	public Date getMdate() {
		return mdate;
	}

	public void setMdate(Date mdate) {
		this.mdate = mdate;
	}

	public int getMreadnum() {
		return mreadnum;
	}

	public void setMreadnum(int mreadnum) {
		this.mreadnum = mreadnum;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getOriginFilename() {
		return originFilename;
	}

	public void setOriginFilename(String originFilename) {
		this.originFilename = originFilename;
	}

	public long getFilesize() {
		return filesize;
	}

	public void setFilesize(long filesize) {
		this.filesize = filesize;
	}

	public double getPlaytime() {
		return playtime;
	}

	public void setPlaytime(double playtime) {
		this.playtime = playtime;
	}

	public int getIdx_fk() {
		return idx_fk;
	}

	public void setIdx_fk(int idx_fk) {
		this.idx_fk = idx_fk;
	}

	public String getAlbum() {
		return album;
	}

	public void setAlbum(String album) {
		this.album = album;
	}

	public String getMartist() {
		return martist;
	}

	public void setMartist(String martist) {
		this.martist = martist;
	}

	public String getAfilename() {
		return afilename;
	}

	public void setAfilename(String afilename) {
		this.afilename = afilename;
	}

	public String getAlbumtitle() {
		return albumtitle;
	}

	public void setAlbumtitle(String albumtitle) {
		this.albumtitle = albumtitle;
	}

	public int getCpage() {
		return cpage;
	}
	public void setCpage(int cpage) {
		this.cpage = cpage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getPagingBlock() {
		return pagingBlock;
	}
	public void setPagingBlock(int pagingBlock) {
		this.pagingBlock = pagingBlock;
	}
	public int getPrevBlock() {
		return prevBlock;
	}
	public void setPrevBlock(int prevBlock) {
		this.prevBlock = prevBlock;
	}
	public int getNextBlock() {
		return nextBlock;
	}
	public void setNextBlock(int nextBlock) {
		this.nextBlock = nextBlock;
	}

	// ����¡������ ������ �����ϴ� �޼ҵ�
	public void init() {
		pageCount = (totalCount - 1) / pageSize + 1;
		if (cpage < 1) {
			cpage = 1; // 1�������� ����Ʈ��
		}

		if (cpage > pageCount) {
			cpage = pageCount;// ������ �������� ����
		}
		// [1] where rn between A and B�� �̿��� ���
		end = this.cpage * this.pageSize;
		start = end - (pageSize - 1);
		
		prevBlock = (cpage - 1) / pagingBlock * pagingBlock;
		nextBlock = prevBlock + (pagingBlock + 1);

	}

	// ������ �׺���̼� ���ڿ� �����
	public String getPageNavi(String myctx, String loc) {

		String link = myctx + "/" + loc;

		StringBuilder buf = new StringBuilder();
		buf.append("<ul class='pagination'>");
		if (prevBlock > 0) {
			buf.append("<li>");
			buf.append("<a href='" + link + "?cpage=" + prevBlock + "'>");
			buf.append("Prev");
			buf.append("</a>");
			buf.append("</li>");
		}
		for (int i = prevBlock + 1; i <= nextBlock - 1 && i <= pageCount; i++) {
			String css = "";
			if (i == cpage) {
				css = "active";
			}

			buf.append("<li class='" + css + "'>");
			buf.append("<a href='" + link + "?cpage=" + i + "'>");
			buf.append(i);
			buf.append("</a>");
			buf.append("</li>");
		}
		if (nextBlock <= pageCount) {
			buf.append("<li>");
			buf.append("<a href='" + link + "?cpage=" + nextBlock + "'>");
			buf.append("Next");
			buf.append("</a>");
			buf.append("</li>");
		}
		buf.append("</ul>");

		return buf.toString();
	}

	@Override
	public String toString() {
		return "MusicVO [midx=" + midx + ", mtitle=" + mtitle + ", mcoment=" + mcoment + ", mlyrics=" + mlyrics
				+ ", mdate=" + mdate + ", mreadnum=" + mreadnum + ", filename=" + filename + ", originFilename="
				+ originFilename + ", filesize=" + filesize + ", playtime=" + playtime + ", idx_fk=" + idx_fk
				+ ", album=" + album + ", afilename=" + afilename + ", martist=" + martist + ", nickname=" + nickname
				+ ", albumtitle=" + albumtitle + ", cpage=" + cpage + ", pageSize=" + pageSize + ", totalCount="
				+ totalCount + ", pageCount=" + pageCount + ", start=" + start + ", end=" + end + ", pagingBlock="
				+ pagingBlock + ", prevBlock=" + prevBlock + ", nextBlock=" + nextBlock + "]";
	}
	
	
}
