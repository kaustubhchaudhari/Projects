package com.kaustubh.pojo;

import java.util.ArrayList;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="orders")
public class Order {
	
		
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="orderId", unique=true, nullable=false)
	private int orderId;
	
	@Column(name="name", nullable= false)
	private String name;
	
	@Column(name="email")
	private String email;
	
	@Column(name="phoneNumber")
	private String phoneNumber;	
	
	@Column(name="street", nullable=false)
	private String street;
	
	@Column(name="city",nullable=false)
	private String city;
	
	@Column(name="state", unique=true, nullable=false)
	private String state;
	
	@Column(name="country", nullable=false)
	private String country;
	
	@Column(name="zip", nullable=false)
	private int zip;

	@Column(name="cardNo",nullable=false)
	private long cardNo;
	
	@Column(name="expiryMonth", nullable=false)
	private int expiryMonth;
	
	@Column(name="expiryYear", nullable=false)
	private int expiryYear;
	
	@Column(name="cardName", nullable=false)
	private String cardName;
	
	@Column(name="cardCvv", nullable=false)
	private int cardCvv;
	
	@Column(name="orderTotal", nullable=false)
	private float orderTotal;
	
	@Column(name="deliveryDate", nullable=false)
	private String deliveryDate;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="personID")
	private User user;
	
	public Order(){
		
	}

	
	
	public Order(int orderId, String name,String email, String phoneNumber, String street,
			String city, String state, String country, long cardNo, int expiryMonth, int expiryYear, String cardName,
			int cardCvv, int zip, User user, Float orderTotal, String deliveryDate ) {
		super();
		this.orderId = orderId;
		this.orderTotal=orderTotal;
		this.deliveryDate=deliveryDate;
		this.name = name;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.street = street;
		this.city = city;
		this.state = state;
		this.country = country;
		this.cardNo = cardNo;
		this.expiryMonth = expiryMonth;
		this.expiryYear = expiryYear;
		this.cardName = cardName;
		this.cardCvv = cardCvv;
		this.user = user;
		this.zip=zip;
	}
	
	public float getOrderTotal() {
		return orderTotal;
	}



	public void setOrderTotal(float orderTotal) {
		this.orderTotal = orderTotal;
	}


	

	public String getDeliveryDate() {
		return deliveryDate;
	}



	public void setDeliveryDate(String deliveryDate) {
		this.deliveryDate = deliveryDate;
	}



	public int getZip() {
		return zip;
	}



	public void setZip(int zip) {
		this.zip = zip;
	}



	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}



	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public long getCardNo() {
		return cardNo;
	}


	public void setCardNo(long cardNo) {
		this.cardNo = cardNo;
	}




	public int getExpiryMonth() {
		return expiryMonth;
	}


	public void setExpiryMonth(int expiryMonth) {
		this.expiryMonth = expiryMonth;
	}


	public int getExpiryYear() {
		return expiryYear;
	}


	public void setExpiryYear(int expiryYear) {
		this.expiryYear = expiryYear;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}

	public String getCardName() {
		return cardName;
	}


	public void setCardName(String cardName) {
		this.cardName = cardName;
	}


	public int getCardCvv() {
		return cardCvv;
	}


	public void setCardCvv(int cardCvv) {
		this.cardCvv = cardCvv;
	}


	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
	
	

}
