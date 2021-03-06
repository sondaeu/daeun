package ani.project.hotel.pageutil;

// 브라우저에서 보여질 페이지 번호와
// 한 페이지에서 보여질 게시글의 개수를 저장하는 클래스
// -> paging 처리에 필요한 start와 end 번호를 알 수 있음
public class PageCriteria {
	private int page; // 현재 페이지 번호
	private int numsPerPage; // 한 페이지의 게시글 개수
	/* ================================ */
	/* 검색기능 추가코드 */
	private String conditions; // 검색옵션
	private String districtName; // 지역검색
	private String order;
	private String hotelName; // 호텔검색
	private String checkIn; // 체크인
	private String checkOut; // 체크아웃
	/* ================================ */
	
	public PageCriteria() {
		this.page = 1;
		this.numsPerPage = 5;
		/* ===================== */
		/* 검색기능 추가코드 */
		this.conditions = null;
		this.districtName = null;
		this.hotelName = null;
		this.checkIn = null;
		this.checkOut = null;
		this.order = null;
		/* ===================== */
	}
	
	public PageCriteria(int page, int numsPerPage, String conditions, String districtName, String hotelName,
			String checkIn, String checkOut, String order) {
		super();
		this.page = page;
		this.numsPerPage = numsPerPage;
		this.conditions = conditions;
		this.districtName = districtName;
		this.hotelName = hotelName;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
	}

	// getter/setter
	public int getPage() {
		return page;
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
	
	/* ============================================== */
	/* 검색기능 추가코드 */
	public String getConditions() {
		return conditions;
	}

	public void setConditions(String conditions) {
		this.conditions = conditions;
	}
	
	public String getDistrictName() {
		return districtName;
	}

	public void setDistrictName(String districtName) {
		this.districtName = districtName;
	}
	
	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	
	public String getCheckIn() {
		return checkIn;
	}
	
	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}
	
	public String getCheckOut() {
		return checkOut;
	}
	
	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}
	/* ============================================== */
	
	// 현재 보여지는 페이지의 시작 글 일련번호(rn)
	public int getStart() {
		return (this.page - 1) * this.numsPerPage + 1;
	}
	
	// 현재 보여지는 페이지의 마지막 글 일련번호(rn)
	public int getEnd() {
		return this.page * this.numsPerPage;
	}
	
	
	
	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

		/* ========================================================================================= */
	/* 검색기능 추가코드 */
		@Override
	public String toString() {
		return "PageCriteria [page=" + page + ", numsPerPage=" + numsPerPage 
								+ ", conditions=" + conditions	+ ", districtName=" + districtName 
								+ ", hotelName=" + hotelName + ", checkIn=" + checkIn 
								+ ", checkOut=" + checkOut + "]";
	}
	/* ========================================================================================= */
	
}



