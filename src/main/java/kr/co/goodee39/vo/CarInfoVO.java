package kr.co.goodee39.vo;

public class CarInfoVO {

	private int cnum;
	private String cname;
	
	private String kind;
	private String slideimg;
	private String brand;
	private String comment;
	private String brandclass;
	private String selectimg;
	private int carval;
	private int originalprice;
	public int getOriginalprice() {
		return originalprice;
	}
	public void setOriginalprice(int originalprice) {
		this.originalprice = originalprice;
	}
	public String getSelectimg() {
		return selectimg;
	}
	public void setSelectimg(String selectimg) {
		this.selectimg = selectimg;
	}
	
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getSlideimg() {
		return slideimg;
	}
	public void setSlideimg(String slideimg) {
		this.slideimg = slideimg;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getBrandclass() {
		return brandclass;
	}
	public void setBrandclass(String brandclass) {
		this.brandclass = brandclass;
	}
	public int getCarval() {
		return carval;
	}
	public void setCarval(int carval) {
		this.carval = carval;
	}
	
}
