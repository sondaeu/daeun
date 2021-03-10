package ani.project.hotel.pageutil;

public class ReviewCriteria {
	private int page; // ���� ������ ��ȣ
	private int numsPerPage; // �� �������� �Խñ� ����
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
	
	// ���� �������� �������� ���� �� �Ϸù�ȣ(rn)
	public int getStart() {
		return (this.page - 1) * this.numsPerPage + 1;
	}
	
	// ���� �������� �������� ������ �� �Ϸù�ȣ(rn)
	public int getEnd() {
		return this.page * this.numsPerPage;
	}



	@Override
	public String toString() {
		return "ReviewCriteria [page=" + page + ", numsPerPage=" + numsPerPage + ", numHotel=" + numHotel + "]";
	}
	
	
}
