package ani.project.hotel.domain;

import java.util.Date;

public class ReviewVO {
	private int numReview;
	private int numHotel;
	private String id;
	private int star;
	private String titleReview;
	private String contentReview;
	private Date dateReview;
	
	public ReviewVO() {}

	public ReviewVO(int numReview, int numHotel, String id, int star, String titleReview, String contentReview,
			Date dateReview) {
		super();
		this.numReview = numReview;
		this.numHotel = numHotel;
		this.id = id;
		this.star = star;
		this.titleReview = titleReview;
		this.contentReview = contentReview;
		this.dateReview = dateReview;
	}

	public int getNumReview() {
		return numReview;
	}

	public void setNumReview(int numReview) {
		this.numReview = numReview;
	}

	public int getNumHotel() {
		return numHotel;
	}

	public void setNumHotel(int numHotel) {
		this.numHotel = numHotel;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public String getTitleReview() {
		return titleReview;
	}

	public void setTitleReview(String titleReview) {
		this.titleReview = titleReview;
	}

	public String getContentReview() {
		return contentReview;
	}

	public void setContentReview(String contentReview) {
		this.contentReview = contentReview;
	}

	public Date getDateReview() {
		return dateReview;
	}

	public void setDateReview(Date dateReview) {
		this.dateReview = dateReview;
	}

	@Override
	public String toString() {
		return "ReviewVO [numReview=" + numReview + ", numHotel=" + numHotel + ", id=" + id + ", star=" + star
				+ ", titleReview=" + titleReview + ", contentReview=" + contentReview + ", dateReview=" + dateReview
				+ "]";
	}
	
	
}
