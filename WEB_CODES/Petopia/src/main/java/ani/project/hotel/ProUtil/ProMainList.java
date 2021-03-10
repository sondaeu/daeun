package ani.project.hotel.ProUtil;

import java.util.List;

public class ProMainList {
	private List<ProResultList> proList;
	public ProMainList() {
		// TODO Auto-generated constructor stub
	}

	public List<ProResultList> getProList() {
		return proList;
	}

	public void setProList(List<ProResultList> proList) {
		this.proList = proList;
	}

	public ProMainList(List<ProResultList> proList) {
		this.proList = proList;
	}
	
	public static class ProResultList {
		private String nameProlist;
		private String numProlist;
		private String saleProlist;
		private String priceProlist;
		private String timePro;
		private String numHotel;
		private String hotelImg;
		private String titleHotel;
		public ProResultList() {
			// TODO Auto-generated constructor stub
		}
		
	


		public String getNumHotel() {
			return numHotel;
		}


		public void setNumHotel(String numHotel) {
			this.numHotel = numHotel;
		}


		public String getHotelImg() {
			return hotelImg;
		}


		public void setHotelImg(String hotelImg) {
			this.hotelImg = hotelImg;
		}


		public String getTitleHotel() {
			return titleHotel;
		}


		public void setTitleHotel(String titleHotel) {
			this.titleHotel = titleHotel;
		}


		public String getTimePro() {
			return timePro;
		}


		public void setTimePro(String timePro) {
			this.timePro = timePro;
		}


		public String getNameProlist() {
			return nameProlist;
		}


		public void setNameProlist(String nameProlist) {
			this.nameProlist = nameProlist;
		}


		public String getNumProlist() {
			return numProlist;
		}


		public void setNumProlist(String numProlist) {
			this.numProlist = numProlist;
		}


		public String getSaleProlist() {
			return saleProlist;
		}


		public void setSaleProlist(String saleProlist) {
			this.saleProlist = saleProlist;
		}


		public String getPriceProlist() {
			return priceProlist;
		}


		public void setPriceProlist(String priceProlist) {
			this.priceProlist = priceProlist;
		}




		@Override
		public String toString() {
			return "ProResultList [nameProlist=" + nameProlist + ", numProlist=" + numProlist + ", saleProlist="
					+ saleProlist + ", priceProlist=" + priceProlist + ", timePro=" + timePro + ", numHotel=" + numHotel
					+ ", hotelImg=" + hotelImg + ", titleHotel=" + titleHotel + "]";
		}




	}
	
}
