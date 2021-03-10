package ani.project.hotel.domain;


public class HotelBoardVO {
	private int numHotel;
	private String infoHotel;
	private String contentHotel;
	private int powerlink;
	private String titleHotel;
	private String id;
	private String hotelImg;
	private int CheckHotel;
	private String address;
	
	public HotelBoardVO() {}

	public HotelBoardVO(int numHotel, String infoHotel, String contentHotel, int powerlink, String titleHotel,
			String id, String hotelImg, int checkHotel) {
		super();
		this.numHotel = numHotel;
		this.infoHotel = infoHotel;
		this.contentHotel = contentHotel;
		this.powerlink = powerlink;
		this.titleHotel = titleHotel;
		this.id = id;
		this.hotelImg = hotelImg;
		CheckHotel = checkHotel;
	}
	

	public HotelBoardVO(int numHotel, String infoHotel, String contentHotel, int powerlink, String titleHotel,
			String id, String hotelImg, int checkHotel, String address) {
		super();
		this.numHotel = numHotel;
		this.infoHotel = infoHotel;
		this.contentHotel = contentHotel;
		this.powerlink = powerlink;
		this.titleHotel = titleHotel;
		this.id = id;
		this.hotelImg = hotelImg;
		CheckHotel = checkHotel;
		this.address = address;
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

	public int getCheckHotel() {
		return CheckHotel;
	}

	public void setCheckHotel(int checkHotel) {
		CheckHotel = checkHotel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "HotelBoardVO [numHotel=" + numHotel + ", infoHotel=" + infoHotel + ", contentHotel=" + contentHotel
				+ ", powerlink=" + powerlink + ", titleHotel=" + titleHotel + ", id=" + id + ", hotelImg=" + hotelImg
				+ ", CheckHotel=" + CheckHotel + ", address=" + address + "]";
	}


	
	
	}