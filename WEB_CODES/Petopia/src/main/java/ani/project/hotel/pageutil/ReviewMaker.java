package ani.project.hotel.pageutil;

public class ReviewMaker {
	private ReviewCriteria criteria;
	private int totalCount; // ��ü �Խñ� ����
	private int numsOfPageLinks; // ������ ��ȣ ��ũ�� ����
	private int startPageNo; // ���� ������ ��ũ ��ȣ
	private int endPageNo; // �� ������ ��ũ ��ȣ
	private boolean hasPrev; // ȭ�鿡 ���̴� ���� ������ ��ȣ���� ���� ������ �������� �ִ� ��
	private boolean hasNext; // ȭ�鿡 ���̴� �� ������ ��ȣ���� ū ������ �������� �ִ� ��
	
	public ReviewMaker() {
		this.numsOfPageLinks = 5;
	}
	
	public ReviewCriteria getCriteria() {
		return criteria;
	}
	
	public void setCriteria(ReviewCriteria criteria2) {
		this.criteria = criteria2;
	}
	
	public int getTotalCount() {
		return totalCount;
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	
	public int getNumsOfPageLinks() {
		return numsOfPageLinks;
	}
	
	public int getStartPageNo() {
		return startPageNo;
	}
	
	public int getEndPageNo() {
		return endPageNo;
	}
	
	public boolean isHasPrev() {
		return hasPrev;
	}
	
	public boolean isHasNext() {
		return hasNext;
	}
	
	// startPageNo, endPageNo, hasPrev, hasNext ���� ��� �� ����
	public void setPageData() {
		int totalLinkNo = (int) Math.ceil((double) totalCount / criteria.getNumsPerPage());
		int temp = (int) Math.ceil((double) criteria.getPage() / numsOfPageLinks) * numsOfPageLinks;
		
		if (temp > totalLinkNo) {
			endPageNo = totalLinkNo;
		} else {
			endPageNo = temp;
		}
		
		startPageNo = ((endPageNo - 1) / numsOfPageLinks) * numsOfPageLinks + 1;
		
		if (startPageNo == 1) {
			hasPrev = false;
		} else {
			hasPrev = true;
		}
		
		if (endPageNo * criteria.getNumsPerPage() >= totalCount) {
			hasNext = false;
		} else {
			hasNext = true;
		}
		// Math.ceil (�ø�)
		// Math.floor (����
		
	}

	@Override
	public String toString() {
		return "ReviewMaker [criteria=" + criteria + ", totalCount=" + totalCount + ", numsOfPageLinks="
				+ numsOfPageLinks + ", startPageNo=" + startPageNo + ", endPageNo=" + endPageNo + ", hasPrev=" + hasPrev
				+ ", hasNext=" + hasNext + "]";
	}
	
	
}
