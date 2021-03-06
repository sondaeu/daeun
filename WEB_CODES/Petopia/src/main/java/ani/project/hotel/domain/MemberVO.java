package ani.project.hotel.domain;

/*
COLUM_NAME		DATA-TYPE			NULLABLE	COMMENTS
ID				VARCHAR2(100 BYTE)	No			아이디(PK) - 영문+숫자 4~12자리
PASSWORD		VARCHAR2(100 BYTE)	No			비밀번호 - 영문+숫자 8자리
NAME			VARCHAR2(100 BYTE)	Yes			이름/업체명
EMAIL			VARCHAR2(100 BYTE)	Yes			이메일
CONTACT			VARCHAR2(100 BYTE)	Yes			연락처
ANIMALS			VARCHAR2(100 BYTE)	Yes 		보유/취급 반려동물 종류
ZIPCODE			VARCHAR2(100 BYTE)	Yes 		우편번호 - 업체
ADDRESS			VARCHAR2(100 BYTE)	Yes 		주소 - 업체
DETAILADDRESS	VARCHAR2(100 BYTE)	Yes			상세주소 - 업체
BIRTHDAY		VARCHAR2(100 BYTE)	Yes			생년월일 - 개인
NOTE			VARCHAR2(2000 BYTE)	Yes			메모
AUTHORITY		VARCHAR2(100 BYTE)	Yes			권한 - 1:관리자, 2:개인, 3:업체
REGIDATE		VARCHAR2(100 BYTE)	Yes			가입날짜
DELETION		VARCHAR2(100 BYTE)	Yes 		삭제요청 - 0:X, 1:O
EXITDATE		VARCHAR2(100 BYTE)	Yes			삭제요청날짜
*/

public class MemberVO {
	private String id;
	private String password; 
	private String name; 
	private String email;
	private String contact;
	private String animals; 
	private String zipcode; 
	private String address; 
	private String detailaddress; 
	private String birthday; 
	private String note; 
	private String authority;
	private String regidate;
	private String deletion;
	private String exitdate;

	public MemberVO() {
	}
	
	public MemberVO(String id, String password, String name, String email, String contact, String animals,
			String zipcode, String address, String detailaddress, String birthday, String note, String authority,
			String regidate, String deletion, String exitdate) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.contact = contact;
		this.animals = animals;
		this.zipcode = zipcode;
		this.address = address;
		this.detailaddress = detailaddress;
		this.birthday = birthday;
		this.note = note;
		this.authority = authority;
		this.regidate = regidate;
		this.deletion = deletion;
		this.exitdate = exitdate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getAnimals() {
		return animals;
	}

	public void setAnimals(String animals) {
		this.animals = animals;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDetailaddress() {
		return detailaddress;
	}

	public void setDetailaddress(String detailaddress) {
		this.detailaddress = detailaddress;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public String getRegidate() {
		return regidate;
	}

	public void setRegidate(String regidate) {
		this.regidate = regidate;
	}

	public String getDeletion() {
		return deletion;
	}

	public void setDeletion(String deletion) {
		this.deletion = deletion;
	}

	public String getExitdate() {
		return exitdate;
	}

	public void setExitdate(String exitdate) {
		this.exitdate = exitdate;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", email=" + email + ", contact="
				+ contact + ", animals=" + animals + ", zipcode=" + zipcode + ", address=" + address
				+ ", detailaddress=" + detailaddress + ", birthday=" + birthday + ", note=" + note + ", authority="
				+ authority + ", regidate=" + regidate + ", deletion=" + deletion + ", exitdate=" + exitdate + "]";
	}

} // end MemberVO
