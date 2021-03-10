package ani.project.hotel.domain;

public class AllInfoVO {
	private int numHotel;
	private String infoHotel;
	private String contentHotel;
	private int powerlink;
	private String titleHotel;
	private String id;
	private String hotelImg;
	private int CheckHotel;
	private String password; // ���� + ���� ���� 8�ڸ�
	private String name; // ����:�̸�, ��ü:ȣ�ڸ�
	private String email;
	private String contact;
	private String animals; // ����:���� �ݷ�����, ��ü:��� �ݷ�����
	private String zipcode; // ��ü�� ���
	private String address; // ��ü�� ���
	private String detailaddress; // ��ü�� ���
	private String birthday; // ���θ� ���
	private String note; // ����:�ڱ�Ұ�, ��ü:Ư�̻���(ex. 10kg �̸� �길 ���)
	private int authority; // ���� 1:������, 2:����, 3:��ü
	
	public AllInfoVO() {}
	
	public AllInfoVO(int numHotel, String infoHotel, String contentHotel, int powerlink, String titleHotel, String id,
			String hotelImg, int checkHotel, String password, String name, String email, String contact, String animals,
			String zipcode, String address, String detailaddress, String birthday, String note, 
			int authority) {
		super();
		this.numHotel = numHotel;
		this.infoHotel = infoHotel;
		this.contentHotel = contentHotel;
		this.powerlink = powerlink;
		this.titleHotel = titleHotel;
		this.id = id;
		this.hotelImg = hotelImg;
		CheckHotel = checkHotel;
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


	public int getAuthority() {
		return authority;
	}


	public void setAuthority(int authority) {
		this.authority = authority;
	}


	public int getNumHotel() {
		return numHotel;
	}


	public void setNumHotel(int numHotel) {
		this.numHotel = numHotel;
	}


	public String getInfoHotel() {
		return infoHotel;
	}


	public void setInfoHotel(String infoHotel) {
		this.infoHotel = infoHotel;
	}


	public String getContentHotel() {
		return contentHotel;
	}


	public void setContentHotel(String contentHotel) {
		this.contentHotel = contentHotel;
	}


	public int getPowerlink() {
		return powerlink;
	}


	public void setPowerlink(int powerlink) {
		this.powerlink = powerlink;
	}


	public String getTitleHotel() {
		return titleHotel;
	}


	public void setTitleHotel(String titleHotel) {
		this.titleHotel = titleHotel;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getHotelImg() {
		return hotelImg;
	}


	public int getCheckHotel() {
		return CheckHotel;
	}


	public void setCheckHotel(int checkHotel) {
		CheckHotel = checkHotel;
	}


	public void setHotelImg(String hotelImg) {
		this.hotelImg = hotelImg;
	}

	@Override
	public String toString() {
		return "AllInfoVO [numHotel=" + numHotel + ", infoHotel=" + infoHotel + ", contentHotel=" + contentHotel
				+ ", powerlink=" + powerlink + ", titleHotel=" + titleHotel + ", id=" + id + ", hotelImg=" + hotelImg
				+ ", CheckHotel=" + CheckHotel + ", password=" + password + ", name=" + name + ", email=" + email
				+ ", contact=" + contact + ", animals=" + animals + ", zipcode=" + zipcode + ", address=" + address
				+ ", detailaddress=" + detailaddress + ", birthday=" + birthday + ", note=" + note 
				+ ", authority=" + authority + "]";
	}
		
		
}
