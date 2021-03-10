package ani.project.hotel.pageutil;

public class ReviewCriteria {
	private int page; // 현재 페이지 번호
	private int numsPerPage; // 한 페이지의 게시글 개수
	private int numHotel;
	
	public ReviewCriteria() {
		this.page = 1;
		this.numsPerPage = 5;
	}
	
	

	public ReviewCriteria(int page, int numsPerPage, int numHotel) {
		this.page = page;
		this.numsPerPage = numsPerPage;
		this.numHotel = numHotel;
	}



	// getter/setter
	
	
	public int getPage() {
		return page;
	}

	public int getNumHotel() {
		return numHotel;
	}



	public void setNumHotel(int numHotel) {
		this.numHotel = numHotel;
	}



	public void setPage(int page) {
		this.page = page;
	}

	public int getNumsPerPage() {
		return numsPerPage;
	}

	public void setNumsPerPage(int numsPerPage) {
		this.numsPerPage = numsPerPage;
	}
	
	// 현재 보여지는 페이지의 시작 글 일련번호(rn)
	public int getStart() {
		return (this.page - 1) * this.numsPerPage + 1;
	}
	
	// 현재 보여지는 페이지의 마지막 글 일련번호(rn)
	public int getEnd() {
		return this.page * this.numsPerPage;
	}



	@Override
	public String toString() {
		return "ReviewCriteria [page=" + page + ", numsPerPage=" + numsPerPage + ", numHotel=" + numHotel + "]";
	}
	
	
}
