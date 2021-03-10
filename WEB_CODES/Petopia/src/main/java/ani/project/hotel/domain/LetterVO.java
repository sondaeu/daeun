package ani.project.hotel.domain;

import java.util.Date;

public class LetterVO {
	private int numLetter;
	private String userId;
	private String hotelId;	
	private Date dataLetter;	
	private String titleLetter;
	private String contentLetter;
	private int open;
	
	public LetterVO() {
		// TODO Auto-generated constructor stub
	}
	
	public LetterVO(int numLetter, String userId, String hotelId, Date dataLetter, String titleLetter,
			String contentLetter, int open) {
		super();
		this.numLetter = numLetter;
		this.userId = userId;
		this.hotelId = hotelId;
		this.dataLetter = dataLetter;
		this.titleLetter = titleLetter;
		this.contentLetter = contentLetter;
		this.open = open;
	}

	public int getNumLetter() {
		return numLetter;
	}

	public void setNumLetter(int numLetter) {
		this.numLetter = numLetter;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getHotelId() {
		return hotelId;
	}

	public void setHotelId(String hotelId) {
		this.hotelId = hotelId;
	}

	public Date getDataLetter() {
		return dataLetter;
	}

	public void setDataLetter(Date dataLetter) {
		this.dataLetter = dataLetter;
	}

	public String getTitleLetter() {
		return titleLetter;
	}

	public void setTitleLetter(String titleLetter) {
		this.titleLetter = titleLetter;
	}

	public String getContentLetter() {
		return contentLetter;
	}

	public void setContentLetter(String contentLetter) {
		this.contentLetter = contentLetter;
	}

	public int getOpen() {
		return open;
	}

	public void setOpen(int open) {
		this.open = open;
	}

	@Override
	public String toString() {
		return "LetterVO [numLetter=" + numLetter + ", userId=" + userId + ", hotelId=" + hotelId + ", dataLetter="
				+ dataLetter + ", titleLetter=" + titleLetter + ", contentLetter=" + contentLetter + ", open=" + open
				+ "]";
	}
	
	
	
}
