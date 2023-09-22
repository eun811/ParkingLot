package com.parking;

import java.util.Vector;

public class CarBean {
	
	private String enter;
	private String exit;
	private int total = 0;
	
	private Vector carList = new Vector();

	
	public void setEnter(String plateNumber) {
		carList.add(new Car(plateNumber, System.currentTimeMillis()));
	}
	
	public void setExit(String plateNumber) {
		Car car = null;
		for(int i=0; i<carList.size(); i++) {
			car = (Car) carList.get(i);
			if(plateNumber.equals(car.getPlateNumber())) {
				carList.remove(i);
				break;
			}
		}
	}
	
	public Car getCar() {
		return null;
	}
	
	public Car[] getCarList() {
		Car[] cars = new Car[carList.size()];
		for(int i=0; i<cars.length; i++) {
			cars[i] = (Car)carList.get(i);
		}
		return cars;
	}
	
	public int getTotal() {
		return carList.size();
	}
}
