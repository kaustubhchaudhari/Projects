package com.kaustubh.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

	@Entity
	@Table(name="orderItem")
	public class OrderItem {
		
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		@Column(name="itemId", unique=true, nullable=false)
		private int itemId;
		
		@Column(name="title", nullable=false)
		private String title;
		
		@Column(name="author", nullable=false)
		private String author;
		
		@Column(name="isbn", nullable=false)
		private int isbn;
		
		@Column(name="year", nullable=false)
		private int year;
		
		@Column(name="price", nullable=false)
		private Float price;
		
		@Column(name="quantity", nullable=false)
		private int orderedQuantity;
		

		@ManyToOne
		@JoinColumn(name="orderId")
		private Order order;
		
		
		
		public OrderItem(){
			
		}

		
		public OrderItem(int itemId, String title, String author, int isbn, int year, Float price,
				int orderedQuantity, Order order) {
			super();
			this.itemId = itemId;
			this.title = title;
			this.author = author;
			this.isbn = isbn;
			this.year = year;
			this.price = price;
			this.orderedQuantity = orderedQuantity;
			this.order = order;
		}


		public Order getOrder() {
			return order;
		}


		public void setOrder(Order order) {
			this.order = order;
		}

		public int getitemId() {
			return itemId;
		}


		public void setitemId(int itemId) {
			this.itemId = itemId;
		}


		public String getTitle() {
			return title;
		}


		public void setTitle(String title) {
			this.title = title;
		}


		public String getAuthor() {
			return author;
		}


		public void setAuthor(String author) {
			this.author = author;
		}


		public int getIsbn() {
			return isbn;
		}


		public void setIsbn(int isbn) {
			this.isbn = isbn;
		}


		public int getYear() {
			return year;
		}


		public void setYear(int year) {
			this.year = year;
		}


		public Float getPrice() {
			return price;
		}


		public void setPrice(Float price) {
			this.price = price;
		}


		public int getOrderedQuantity() {
			return orderedQuantity;
		}


		public void setOrderedQuantity(int orderedQuantity) {
			this.orderedQuantity = orderedQuantity;
		}
		
		
}
