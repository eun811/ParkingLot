package com.parking;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Car {
	private String plateNumber;
	private long parkingTime;
	
	SimpleDateFormat fo = new SimpleDateFormat("yyyy년 MM월dd일 HH시mm분ss초");
	
	
	public Car() {}
	public Car(String plateNumber, long parkingTime) {
		this.plateNumber = plateNumber;
		this.parkingTime = parkingTime;
	}
	
	public String getPlateNumber() {
		return plateNumber;
	}
	
	public String getSimpleTime() {
		String simpledate = fo.format(new Date(parkingTime));
		return simpledate;
	}
	
	
}
