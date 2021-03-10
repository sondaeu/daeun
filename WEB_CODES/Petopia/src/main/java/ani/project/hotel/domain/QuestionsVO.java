package ani.project.hotel.domain;

import java.util.Date;

public class QuestionsVO {
	private int numQt;
	private int numHotel;
	private String titleQt;
	private Date dateQt;
	private String secretCheck;
	private int numAnswer;
	private String contentQt;
	private String id;
	private int numQtReply;
	private int rn;
	
	public QuestionsVO() {}

	public QuestionsVO(int numQt, int numHotel, String titleQt, Date dateQt, String secretCheck, int numAnswer,
			String contentQt, String id, int numQtReply, int rn) {
		super();
		this.numQt = numQt;
		this.numHotel = numHotel;
		this.titleQt = titleQt;
		this.dateQt = dateQt;
		this.secretCheck = secretCheck;
		this.numAnswer = numAnswer;
		this.contentQt = contentQt;
		this.id = id;
		this.numQtReply = numQtReply;
		this.rn = rn;
	}

	public int getNumQt() {
		return numQt;
	}

	public void setNumQt(int numQt) {
		this.numQt = numQt;
	}

	public int getNumHotel() {
		return numHotel;
	}

	public void setNumHotel(int numHotel) {
		this.numHotel = numHotel;
	}

	public String getTitleQt() {
		return titleQt;
	}

	public void setTitleQt(String titleQt) {
		this.titleQt = titleQt;
	}

	public Date getDateQt() {
		return dateQt;
	}

	public void setDateQt(Date dateQt) {
		this.dateQt = dateQt;
	}

	public String getSecretCheck() {
		return secretCheck;
	}

	public void setSecretCheck(String secretCheck) {
		this.secretCheck = secretCheck;
	}

	public int getNumAnswer() {
		return numAnswer;
	}

	public void setNumAnswer(int numAnswer) {
		this.numAnswer = numAnswer;
	}

	public String getContentQt() {
		return contentQt;
	}

	public void setContentQt(String contentQt) {
		this.contentQt = contentQt;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getNumQtReply() {
		return numQtReply;
	}

	public void setNumQtReply(int numQtReply) {
		this.numQtReply = numQtReply;
	}

	public int getRn() {
		return rn;
	}

	public void setRn(int rn) {
		this.rn = rn;
	}

	@Override
	public String toString() {
		return "QuestionsVO [numQt=" + numQt + ", numHotel=" + numHotel + ", titleQt=" + titleQt + ", dateQt=" + dateQt
				+ ", secretCheck=" + secretCheck + ", numAnswer=" + numAnswer + ", contentQt=" + contentQt + ", id="
				+ id + ", numQtReply=" + numQtReply + ", rn=" + rn + "]";
	}

	
		
}
