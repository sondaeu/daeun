package ani.project.hotel.pageutil;

// ������ ��ȣ���� ��ũ�� ����� ���� ��ƿ��Ƽ Ŭ����
public class AdminMemberPageMaker {
	private AdminMemberCriteria criteria;
	private int totalCount; // ��ü �Խñ� ����
	private int numsOfPageLinks; // ������ ��ȣ ��ũ�� ����
	private int startPageNo; // ���� ������ ��ũ ��ȣ
	private int endPageNo; // �� ������ ��ũ ��ȣ
	private boolean hasPrev; // ȭ�鿡 ���̴� ���� ������ ��ȣ���� ���� ������ �������� �ִ� ��
	private boolean hasNext; // ȭ�鿡 ���̴� �� ������ ��ȣ���� ū ������ �������� �ִ� ��
	
	public AdminMemberPageMaker() {
		this.numsOfPageLinks = 10;
	}
	
	public AdminMemberCriteria getCriteria() {
		return criteria;
	}
	
	public void setCriteria(AdminMemberCriteria criteria) {
		this.criteria = criteria;
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
	
} // end PageMaker












