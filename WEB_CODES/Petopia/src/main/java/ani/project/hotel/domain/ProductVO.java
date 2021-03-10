package ani.project.hotel.domain;

public class ProductVO {
	private int numPro;
	private String namePro;
	private int pricePro;
	private int salePro;
	private String soldPro;
	private int numHotel;
	private String[] nameProlist;
	private int[] priceProlist;
	private int[] saleProlist;
	private String[] soldProlist;
	
	
	public ProductVO() {}

	public ProductVO(int numPro, String namePro, int pricePro, int salePro, String soldPro, int numHotel) {
		super();
		this.numPro = numPro;
		this.namePro = namePro;
		this.pricePro = pricePro;
		this.salePro = salePro;
		this.soldPro = soldPro;
		this.numHotel = numHotel;
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

	public int getNumHotel() {
		return numHotel;
	}

	public void setNumHotel(int numHotel) {
		this.numHotel = numHotel;
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
		return "ProductVO [numPro=" + numPro + ", namePro=" + namePro + ", pricePro=" + pricePro + ", salePro="
				+ salePro + ", soldPro=" + soldPro + ", numHotel=" + numHotel + "]";
	}
}
