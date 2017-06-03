package com.kaustubh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;

import com.kaustubh.exception.BooksException;
import com.kaustubh.exception.OrderException;
import com.kaustubh.exception.OrderItemException;
import com.kaustubh.pojo.Book;
import com.kaustubh.pojo.Order;
import com.kaustubh.pojo.OrderItem;
import com.kaustubh.pojo.User;






public class OrderDAO extends DAO {

	private Order o=null;
	private ArrayList<OrderItem> orderItemList= new ArrayList<OrderItem>();
	
	
			public ArrayList<OrderItem> createOrderItem(long id, int qty, User u){
					
					if(o==null){
						o = new Order();
					}
					OrderItem oi = new OrderItem();
					Query q = getSession().createQuery("from Book");
					List<Book> bookList = q.list();
					for(Book book:bookList){
						if(book.getBookId()==id){
							oi.setTitle(book.getTitle());;
							oi.setIsbn(book.getIsbn());
							oi.setAuthor(book.getAuthor());
							oi.setYear(book.getYear());
							oi.setPrice(book.getPrice());
							oi.setOrderedQuantity(qty);
							oi.setOrder(o);
							orderItemList.add(oi);
							
						}
					}
					return orderItemList;
				}
	
	public void create(Order order) throws OrderException {

        try {
            begin();            
            getSession().save(order);     
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new OrderException("Exception while creating order: " + e.getMessage());
        }      
        }
    
	
	
	
	
    public void delete(Order order) throws OrderException {
        try {
            begin();
            getSession().delete(order);
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new OrderException("Could not delete the book", e);
        }
    }
    
    
    public void submitOrder(OrderItem oi) throws OrderException{
		try {
			begin();
			getSession().save(oi);
			commit();
			
		} catch (HibernateException e) {
			rollback();
			throw new OrderException("Exception while placing order: " + e.getMessage());
		}
	}
    
    public List<Book> bookList() throws BooksException{
		try{
    		begin();
    		Query q= getSession().createQuery("from Book");
    		List<Book> books= q.list();
    		commit();
    		return books;
    	}
    	catch(HibernateException e){
    		rollback();
            throw new BooksException("Exception while showing books: ", e);
    		
    	}
	}
	
    
    public List<Order> list() throws OrderException{
		try{
    		begin();
    		Query q= getSession().createQuery("from Order");
    		List<Order> orders= q.list();
    		commit();
    		return orders;
    	}
    	catch(HibernateException e){
    		rollback();
            throw new OrderException("Exception while showing books: ", e);
    		
    	}
	}
}
