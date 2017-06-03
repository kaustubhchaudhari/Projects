package com.kaustubh.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Entity
@Table(name="book")
public class Book {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="bookId", unique=true, nullable=false)
	private int bookId;
	
	@Column(name="title", nullable=false)
	private String title;
	
	@Column(name="author", nullable=false)
	private String author;
	
	@Column(name="isbn", nullable=false)
	private int isbn;
	
	@Column(name="year", nullable=false)
	private int year;
	
	@Column(name="price", nullable=false)
	private float price;
	
	@Column(name="quantity", nullable=false)
	private int quantity;
	

	@Transient
	private CommonsMultipartFile photo; // for DataBinder to bind <input
										// type="file".../>
										// will not be mapped for Hibernate as
										// we store the file in the FileSystem
										// file will be placed into this field
										// by DataBinder
										// file is in the memory. needs to be
										// transferred to the FileSystem using
										// java.io.file
	@Column(name = "fileName")
	private String fileName;
	
	@ManyToOne
	public User user;
	
	@Transient
	int postedBy;
	
	public Book(){
		
	}

	
	public Book(int bookId, String title, String author, int isbn, Short year, float price,
			int quantity, User user) {
		super();
		this.bookId = bookId;
		this.title = title;
		this.author = author;
		this.isbn = isbn;
		this.year = year;
		this.price = price;
		this.quantity= quantity;
		this.user=user;
	}


	
	
	public CommonsMultipartFile getPhoto() {
		return photo;
	}


	public void setPhoto(CommonsMultipartFile photo) {
		this.photo = photo;
	}


	


	public String getFileName() {
		return fileName;
	}


	public void setFileName(String fileName) {
		this.fileName = fileName;
	}


	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
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

	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public float getPrice() {
		return price;
	}


	public void setPrice(float price) {
		this.price = price;
	}


	public int getPostedBy() {
		return postedBy;
	}


	public void setPostedBy(int postedBy) {
		this.postedBy = postedBy;
	}
	
	
}
