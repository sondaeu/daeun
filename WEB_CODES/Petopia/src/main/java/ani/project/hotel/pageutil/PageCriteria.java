package ani.project.hotel.pageutil;

// ���������� ������ ������ ��ȣ��
// �� ���������� ������ �Խñ��� ������ �����ϴ� Ŭ����
// -> paging ó���� �ʿ��� start�� end ��ȣ�� �� �� ����
public class PageCriteria {
	private int page; // ���� ������ ��ȣ
	private int numsPerPage; // �� �������� �Խñ� ����
	/* ================================ */
	/* �˻���� �߰��ڵ� */
	private String conditions; // �˻��ɼ�
	private String districtName; // �����˻�
	private String order;
	private String hotelName; // ȣ�ڰ˻�
	private String checkIn; // üũ��
	private String checkOut; // üũ�ƿ�
	/* ================================ */
	
	public PageCriteria() {
		this.page = 1;
		this.numsPerPage = 5;
		/* ===================== */
		/* �˻���� �߰��ڵ� */
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
	/* �˻���� �߰��ڵ� */
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
	
	// ���� �������� �������� ���� �� �Ϸù�ȣ(rn)
	public int getStart() {
		return (this.page - 1) * this.numsPerPage + 1;
	}
	
	// ���� �������� �������� ������ �� �Ϸù�ȣ(rn)
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
	/* �˻���� �߰��ڵ� */
		@Override
	public String toString() {
		return "PageCriteria [page=" + page + ", numsPerPage=" + numsPerPage 
								+ ", conditions=" + conditions	+ ", districtName=" + districtName 
								+ ", hotelName=" + hotelName + ", checkIn=" + checkIn 
								+ ", checkOut=" + checkOut + "]";
	}
	/* ========================================================================================= */
	
}



