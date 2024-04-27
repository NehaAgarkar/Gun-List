package com.SpringBoot.Model;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Guns {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int gunId;
	@Column(length = 80)
	private String gunName;
	private double gunPrice;
	@Column(length = 800)
	private String gunImg1;
	@Column(length = 800)
	private String gunImg2;
	@Column(length = 800)
	private String gunImg3;
	@Column(length = 800)
	private String gunImg4;
	@Column(length = 80)
	private String action;
	@Column(length = 80)
	private String barrelLenth;
	@Column(length = 80)
	private String capacity;
	@Column(length = 80)
	private String finish;
	@Column(length = 80)
	private String Weight;
	@Column(length = 80)
	private String category;
	@Override
	public String toString() {
		return "Guns [gunId=" + gunId + ", gunName=" + gunName + ", gunPrice=" + gunPrice + ", gunImg1=" + gunImg1
				+ ", gunImg2=" + gunImg2 + ", gunImg3=" + gunImg3 + ", gunImg4=" + gunImg4 + ", action=" + action
				+ ", barrelLenth=" + barrelLenth + ", capacity=" + capacity + ", finish=" + finish + ", Weight="
				+ Weight + ", category=" + category + "]";
	}
	public int getGunId() {
		return gunId;
	}
	public void setGunId(int gunId) {
		this.gunId = gunId;
	}
	public String getGunName() {
		return gunName;
	}
	public void setGunName(String gunName) {
		this.gunName = gunName;
	}
	public double getGunPrice() {
		return gunPrice;
	}
	public void setGunPrice(double gunPrice) {
		this.gunPrice = gunPrice;
	}
	public String getGunImg1() {
		return gunImg1;
	}
	public void setGunImg1(String gunImg1) {
		this.gunImg1 = gunImg1;
	}
	public String getGunImg2() {
		return gunImg2;
	}
	public void setGunImg2(String gunImg2) {
		this.gunImg2 = gunImg2;
	}
	public String getGunImg3() {
		return gunImg3;
	}
	public void setGunImg3(String gunImg3) {
		this.gunImg3 = gunImg3;
	}
	public String getGunImg4() {
		return gunImg4;
	}
	public void setGunImg4(String gunImg4) {
		this.gunImg4 = gunImg4;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public String getBarrelLenth() {
		return barrelLenth;
	}
	public void setBarrelLenth(String barrelLenth) {
		this.barrelLenth = barrelLenth;
	}
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	public String getFinish() {
		return finish;
	}
	public void setFinish(String finish) {
		this.finish = finish;
	}
	public String getWeight() {
		return Weight;
	}
	public void setWeight(String weight) {
		Weight = weight;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Guns(int gunId, String gunName, double gunPrice, String gunImg1, String gunImg2, String gunImg3,
			String gunImg4, String action, String barrelLenth, String capacity, String finish, String weight,
			String category) {
		super();
		this.gunId = gunId;
		this.gunName = gunName;
		this.gunPrice = gunPrice;
		this.gunImg1 = gunImg1;
		this.gunImg2 = gunImg2;
		this.gunImg3 = gunImg3;
		this.gunImg4 = gunImg4;
		this.action = action;
		this.barrelLenth = barrelLenth;
		this.capacity = capacity;
		this.finish = finish;
		Weight = weight;
		this.category = category;
	}
	public Guns() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Guns(String gunName, double gunPrice, String gunImg1, String gunImg2, String gunImg3, String gunImg4,
			String action, String barrelLenth, String capacity, String finish, String weight, String category) {
		super();
		this.gunName = gunName;
		this.gunPrice = gunPrice;
		this.gunImg1 = gunImg1;
		this.gunImg2 = gunImg2;
		this.gunImg3 = gunImg3;
		this.gunImg4 = gunImg4;
		this.action = action;
		this.barrelLenth = barrelLenth;
		this.capacity = capacity;
		this.finish = finish;
		Weight = weight;
		this.category = category;
	}
	
	
}
