package kr.co.goodee39.vo;

public class DrivingTypeVO {

	private int drivingnum;
	private String cname;
	private String drtype;
	
	private int additional;
	private String localimg;
	
	public String getLocalimg() {
		return localimg;
	}
	public void setLocalimg(String localimg) {
		this.localimg = localimg;
	}
	public int getDrivingnum() {
		return drivingnum;
	}
	public void setDrivingnum(int drivingnum) {
		this.drivingnum = drivingnum;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getDrtype() {
		return drtype;
	}
	public void setDrtype(String drtype) {
		this.drtype = drtype;
	}
	public int getAdditional() {
		return additional;
	}
	public void setAdditional(int additional) {
		this.additional = additional;
	}
	
}
