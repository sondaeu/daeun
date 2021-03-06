package ani.project.hotel.domain;

import java.util.Arrays;
import java.util.Date;

public class FavoritesVO {
	private int numHistory;
	private Date checkIn;
	private Date checkOut;
	private int numHotel;
	private int numPro; // 구매한 번호
	private String id; // 구매자 아이디
	private int timePro; // 구매 갯수
	private Date dataPro; // 구매 날짜 (트리거)
	private String contentHistory;
	private String namePro;
	private int pricePro;
	private int salePro;
	private String titleHotel;
	private int pricePurchase;
	private int numFavorites;
	private String hotelImg;
	
	// 배열 저장하기위한 코드
	private int[] numProlist;
	private int[] timeProlist;
	private int[] pricePurchaselist;
	private String[] hotelImglist;
	private int[] numHotelList;
	private String[] titleHotelList;
	public FavoritesVO() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public FavoritesVO(int numHistory, Date checkIn, Date checkOut, int numHotel, int numPro, String id, int timePro,
			Date dataPro, String contentHistory, String namePro, int pricePro, int salePro, String titleHotel,
			int pricePurchase, int numFavorites, String hotelImg, int[] numProlist, int[] timeProlist,
			int[] pricePurchaselist, String[] hotelImglist, int[] numHotelList, String[] titleHotelList) {
		super();
		this.numHistory = numHistory;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.numHotel = numHotel;
		this.numPro = numPro;
		this.id = id;
		this.timePro = timePro;
		this.dataPro = dataPro;
		this.contentHistory = contentHistory;
		this.namePro = namePro;
		this.pricePro = pricePro;
		this.salePro = salePro;
		this.titleHotel = titleHotel;
		this.pricePurchase = pricePurchase;
		this.numFavorites = numFavorites;
		this.hotelImg = hotelImg;
		this.numProlist = numProlist;
		this.timeProlist = timeProlist;
		this.pricePurchaselist = pricePurchaselist;
		this.hotelImglist = hotelImglist;
		this.numHotelList = numHotelList;
		this.titleHotelList = titleHotelList;
	}



	public int getNumHistory() {
		return numHistory;
	}
	public void setNumHistory(int numHistory) {
		this.numHistory = numHistory;
	}
	public Date getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(Date checkIn) {
		this.checkIn = checkIn;
	}
	public Date getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(Date checkOut) {
		this.checkOut = checkOut;
	}
	public int getNumHotel() {
		return numHotel;
	}
	public void setNumHotel(int numHotel) {
		this.numHotel = numHotel;
	}
	public int getNumPro() {
		return numPro;
	}
	public void setNumPro(int numPro) {
		this.numPro = numPro;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getTimePro() {
		return timePro;
	}
	public void setTimePro(int timePro) {
		this.timePro = timePro;
	}
	public Date getDataPro() {
		return dataPro;
	}
	public void setDataPro(Date dataPro) {
		this.dataPro = dataPro;
	}
	public String getContentHistory() {
		return contentHistory;
	}
	public void setContentHistory(String contentHistory) {
		this.contentHistory = contentHistory;
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
	public String getTitleHotel() {
		return titleHotel;
	}
	public void setTitleHotel(String titleHotel) {
		this.titleHotel = titleHotel;
	}
	public int getPricePurchase() {
		return pricePurchase;
	}
	public void setPricePurchase(int pricePurchase) {
		this.pricePurchase = pricePurchase;
	}
	public int getNumFavorites() {
		return numFavorites;
	}
	public void setNumFavorites(int numFavorites) {
		this.numFavorites = numFavorites;
	}
	public String getHotelImg() {
		return hotelImg;
	}
	public void setHotelImg(String hotelImg) {
		this.hotelImg = hotelImg;
	}
	public int[] getNumProlist() {
		return numProlist;
	}
	public void setNumProlist(int[] numProlist) {
		this.numProlist = numProlist;
	}
	public int[] getTimeProlist() {
		return timeProlist;
	}
	public void setTimeProlist(int[] timeProlist) {
		this.timeProlist = timeProlist;
	}
	public int[] getPricePurchaselist() {
		return pricePurchaselist;
	}
	public void setPricePurchaselist(int[] pricePurchaselist) {
		this.pricePurchaselist = pricePurchaselist;
	}
	public String[] getHotelImglist() {
		return hotelImglist;
	}
	public void setHotelImglist(String[] hotelImglist) {
		this.hotelImglist = hotelImglist;
	}
	public int[] getNumHotelList() {
		return numHotelList;
	}
	public void setNumHotelList(int[] numHotelList) {
		this.numHotelList = numHotelList;
	}
	public String[] getTitleHotelList() {
		return titleHotelList;
	}
	public void setTitleHotelList(String[] titleHotelList) {
		this.titleHotelList = titleHotelList;
	}



	@Override
	public String toString() {
		return "FavoritesVO [numHistory=" + numHistory + ", checkIn=" + checkIn + ", checkOut=" + checkOut
				+ ", numHotel=" + numHotel + ", numPro=" + numPro + ", id=" + id + ", timePro=" + timePro + ", dataPro="
				+ dataPro + ", contentHistory=" + contentHistory + ", namePro=" + namePro + ", pricePro=" + pricePro
				+ ", salePro=" + salePro + ", titleHotel=" + titleHotel + ", pricePurchase=" + pricePurchase
				+ ", numFavorites=" + numFavorites + ", hotelImg=" + hotelImg + ", numProlist="
				+ Arrays.toString(numProlist) + ", timeProlist=" + Arrays.toString(timeProlist) + ", pricePurchaselist="
				+ Arrays.toString(pricePurchaselist) + ", hotelImglist=" + Arrays.toString(hotelImglist)
				+ ", numHotelList=" + Arrays.toString(numHotelList) + ", titleHotelList="
				+ Arrays.toString(titleHotelList) + "]";
	}
	
	
}