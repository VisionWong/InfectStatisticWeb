package edu.fzu.infectstatistic.pojo;

public class Province {
	private String name;
	private int ip;
	private int sp;
	private int cure;
	private int dead;
	
	public Province(String name, int ip, int sp, int cure, int dead) {
		this.name = name;
		this.ip = ip;
		this.sp = sp;
		this.cure = cure;
		this.dead = dead;
	}
	
	public String getName() {
		return name;
	}
	
	public int getIp() {
		return ip;
	}
	
	public int getSp() {
		return sp;
	}
	
	public int getCure() {
		return cure;
	}
	
	public int getDead() {
		return dead;
	}
}
