package ani.project.hotel.pageutil;

// 브라우저에서 보여질 페이지 번호와
// 한 페이지에서 보여질 게시글의 개수를 저장하는 클래스
// -> paging 처리에 필요한 start와 end 번호를 알 수 있음
public class AdminMemberCriteria {
	private int page; // 현재 페이지 번호
	private int numsPerPage; // 한 페이지의 게시글 개수
	private String conditions; // 검색옵션
	private String personal; // 체크박스 1.개인
	private String owner; // 체크박스 2.업체
	private String manager; // 체크박스 3.관리자
	private String keyword; // 검색어
	private String deletion;
	
	public AdminMemberCriteria() {
		this.page = 1;
		this.numsPerPage = 10;
		this.conditions = null;
		this.personal = null;
		this.owner = null;
		this.manager = null;
		this.keyword = null;
		this.deletion = null;
	}

	public AdminMemberCriteria(int page, int numsPerPage, String conditions, String personal, String owner, String manager, String keyword, String deletion) {
		super();
		this.page = page;
		this.numsPerPage = numsPerPage;
		this.conditions = conditions;
		this.personal = personal;
		this.owner = owner;
		this.manager = manager;
		this.keyword = keyword;
		this.deletion = deletion;
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

	public String getConditions() {
		return conditions;
	}

	public void setConditions(String conditions) {
		this.conditions = conditions;
	}

	public String getPersonal() {
		return personal;
	}

	public void setPersonal(String personal) {
		this.personal = personal;
	}

	public String getHotel() {
		return owner;
	}

	public void setHotel(String owner) {
		this.owner = owner;
	}

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}
	
	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getDeletion() {
		return deletion;
	}

	public void setDeletion(String deletion) {
		this.deletion = deletion;
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
		return "AdminMemberCriteria [page=" + page + ", numsPerPage=" + numsPerPage + ", conditions=" + conditions
				+ ", personal=" + personal + ", owner=" + owner + ", manager=" + manager + ", keyword=" + keyword
				+ ", deletion=" + deletion + "]";
	}

}
