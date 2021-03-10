package ani.project.hotel.pageutil;

// ���������� ������ ������ ��ȣ��
// �� ���������� ������ �Խñ��� ������ �����ϴ� Ŭ����
// -> paging ó���� �ʿ��� start�� end ��ȣ�� �� �� ����
public class AdminMemberCriteria {
	private int page; // ���� ������ ��ȣ
	private int numsPerPage; // �� �������� �Խñ� ����
	private String conditions; // �˻��ɼ�
	private String personal; // üũ�ڽ� 1.����
	private String owner; // üũ�ڽ� 2.��ü
	private String manager; // üũ�ڽ� 3.������
	private String keyword; // �˻���
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
		return "AdminMemberCriteria [page=" + page + ", numsPerPage=" + numsPerPage + ", conditions=" + conditions
				+ ", personal=" + personal + ", owner=" + owner + ", manager=" + manager + ", keyword=" + keyword
				+ ", deletion=" + deletion + "]";
	}

}
