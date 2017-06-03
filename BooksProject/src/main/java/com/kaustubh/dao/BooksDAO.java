package com.kaustubh.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;

import com.kaustubh.exception.BooksException;
import com.kaustubh.pojo.Book;



public class BooksDAO extends DAO {
	
	public Book create(Book book) throws BooksException {

        try {
            begin();            
            getSession().save(book);     
            commit();
            return book;
        } catch (HibernateException e) {
            rollback();
            //throw new AdException("Could not create advert", e);
            throw new BooksException("Exception while creating book: " + e.getMessage());
        }      
        }
    
    public void delete(Book book) throws BooksException {
        try {
            begin();
            getSession().delete(book);
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new BooksException("Could not delete the book", e);
        }
    }
    
	
	public List<Book> publisherList(int personId) throws BooksException{
		try{
    		begin();
    		Query q= getSession().createQuery("from Book where user_personId = :personId");
    		q.setInteger("personId", personId);
    		List<Book> books= q.list();
    		commit();
    		return books;
    	}
    	catch(HibernateException e){
    		rollback();
            throw new BooksException("Exception while showing books: ", e);
    		
    	}
	}
	
    
}
