package ani.project.hotel.domain;

import java.util.Arrays;

public class HotelVO {
	//HotelBoardVO
	private int numHotel;
	private String infoHotel;
	private String contentHotel;
	private int powerlink;
	private String titleHotel;
	private String id;
	private String hotelImg;
	private float star;
	
	//memberVO
	private String password; // 영문 + 숫자 조합 8자리
	private String name; // 개인:이름, 업체:호텔명
	private String email;
	private String contact;
	private String animals; // 개인:소유 반려동물, 업체:취급 반려동물
	private String zipcode; // 업체만 사용
	private String address; // 업체만 사용
	private String detailaddress; // 업체만 사용
	private String birthday; // 개인만 사용
	private String note; // 개인:자기소개, 업체:특이사항(ex. 10kg 미만 펫만 취급)
	private String authority; // 권한 1:관리자, 2:개인, 3:업체
	private String regidate;
	private String deletion;
	private String exitdate;


	//product
	private int numPro;
	private String namePro;
	private int pricePro;
	private int salePro;
	private String soldPro;
	private String[] nameProlist;
	private int[] priceProlist;
	private int[] saleProlist;
	private String[] soldProlist;
	
	public HotelVO() {
	}

	public HotelVO(int numHotel, String infoHotel, String contentHotel, int powerlink, String titleHotel, String id,
			String hotelImg, float star, String password, String name, String email, String contact, String animals,
			String zipcode, String address, String detailaddress, String birthday, String note, 
			String authority, String regidate, String deletion, String exitdate, int numPro, String namePro, int pricePro, int salePro, String soldPro,
			String[] nameProlist, int[] priceProlist, int[] saleProlist, String[] soldProlist) {
		super();
		this.numHotel = numHotel;
		this.infoHotel = infoHotel;
		this.contentHotel = contentHotel;
		this.powerlink = powerlink;
		this.titleHotel = titleHotel;
		this.id = id;
		this.hotelImg = hotelImg;
		this.star = star;
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
		this.numPro = numPro;
		this.namePro = namePro;
		this.pricePro = pricePro;
		this.salePro = salePro;
		this.soldPro = soldPro;
		this.nameProlist = nameProlist;
		this.priceProlist = priceProlist;
		this.saleProlist = saleProlist;
		this.soldProlist = soldProlist;
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

	public void setHotelImg(String hotelImg) {
		this.hotelImg = hotelImg;
	}

	public float getStar() {
		return star;
	}

	public void setStar(float star) {
		this.star = star;
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
	
	public int getNumPro() {
		return numPro;
	}

	public void setNumPro(int numPro) {
		this.numPro = numPro;
	}

	public String getNamePro() {
		return namePro;
	}

	public void setNamePro(String namePro) {
		this.namePro = namePro;
	}

	public int getPricePro() {
		return pricePro;
	}

	public void setPricePro(int pricePro) {
		this.pricePro = pricePro;
	}

	public int getSalePro() {
		return salePro;
	}

	public void setSalePro(int salePro) {
		this.salePro = salePro;
	}

	public String getSoldPro() {
		return soldPro;
	}

	public void setSoldPro(String soldPro) {
		this.soldPro = soldPro;
	}

	public String[] getNameProlist() {
		return nameProlist;
	}

	public void setNameProlist(String[] nameProlist) {
		this.nameProlist = nameProlist;
	}

	public int[] getPriceProlist() {
		return priceProlist;
	}

	public void setPriceProlist(int[] priceProlist) {
		this.priceProlist = priceProlist;
	}

	public int[] getSaleProlist() {
		return saleProlist;
	}

	public void setSaleProlist(int[] saleProlist) {
		this.saleProlist = saleProlist;
	}

	public String[] getSoldProlist() {
		return soldProlist;
	}

	public void setSoldProlist(String[] soldProlist) {
		this.soldProlist = soldProlist;
	}

	@Override
	public String toString() {
		return "HotelVO [numHotel=" + numHotel + ", infoHotel=" + infoHotel + ", contentHotel=" + contentHotel
				+ ", powerlink=" + powerlink + ", titleHotel=" + titleHotel + ", id=" + id + ", hotelImg=" + hotelImg
				+ ", star=" + star + ", password=" + password + ", name=" + name + ", email=" + email + ", contact="
				+ contact + ", animals=" + animals + ", zipcode=" + zipcode + ", address=" + address
				+ ", detailaddress=" + detailaddress + ", birthday=" + birthday + ", note=" + note 
				+ ", authority=" + authority + ", regidate=" + regidate + ", deletion=" + deletion + ", exitdate="
				+ exitdate + ", numPro=" + numPro + ", namePro=" + namePro + ", pricePro=" + pricePro + ", salePro="
				+ salePro + ", soldPro=" + soldPro + ", nameProlist=" + Arrays.toString(nameProlist) + ", priceProlist="
				+ Arrays.toString(priceProlist) + ", saleProlist=" + Arrays.toString(saleProlist) + ", soldProlist="
				+ Arrays.toString(soldProlist) + "]";
	}
	
}
