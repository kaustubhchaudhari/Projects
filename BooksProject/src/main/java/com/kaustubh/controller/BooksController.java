package com.kaustubh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kaustubh.dao.BooksDAO;
import com.kaustubh.dao.UserDAO;
import com.kaustubh.exception.BooksException;
import com.kaustubh.pojo.Book;
import com.kaustubh.pojo.User;
import com.kaustubh.validator.BookValidator;



@Controller
@RequestMapping("/book/*")
public class BooksController {
	
	@Autowired
	@Qualifier("booksDao")
	BooksDAO booksDao;
	
	@Autowired
	@Qualifier("userDao")
	UserDAO userDao;
	
	@Autowired
	@Qualifier("bookValidator")
	BookValidator bookValidator;
	
	@InitBinder("book")
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(bookValidator);
	}
	
	@Autowired
	ServletContext servletContext;
	
	@RequestMapping( value= "/book/add", method = RequestMethod.POST)
	public ModelAndView addBooks(@ModelAttribute("book") Book book, BindingResult result) throws Exception{
		bookValidator.validate(book, result);

		if (result.hasErrors()) {
			return new ModelAndView("book-form", "book", book);
		}
		
		
		
		
		try {
			if (book.getFileName().trim() != "" || book.getFileName() != null) {
				File directory;
				String check = File.separator; // Checking if system is linux
												// based or windows based by
												// checking seprator used.
				String path = null;
				if (check.equalsIgnoreCase("\\")) {
					path = servletContext.getRealPath("resources").replace("build\\", ""); // gives real path as Lab9/build/web/
																				  // so we need to replace build in the path
																						}

				if (check.equalsIgnoreCase("/")) {
					path = servletContext.getRealPath("").replace("build/", "");
					path += "/"; // Adding trailing slash for Mac systems.
				}
				directory = new File(path + "\\" + book.getFileName());
				boolean temp = directory.exists();
				if (!temp) {
					temp = directory.mkdir();
				}
				if (temp) {
					// We need to transfer to a file
					
					File localFile;
					CommonsMultipartFile photoInMemory = book.getPhoto();
					String name = photoInMemory.getOriginalFilename();
					localFile =new File("C:\\webtools\\images",name);
					photoInMemory.transferTo(localFile);
					
					book.setFileName(localFile.getPath());

					User u= userDao.get(book.getPostedBy());
					book.setUser(u);
					book = booksDao.create(book);
				} else {
					System.out.println("Failed to create directory!");
				}
			}

		} catch (IllegalStateException e) {
			System.out.println("*** IllegalStateException: " + e.getMessage());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("*** IOException: " + e.getMessage());
		} catch (BooksException e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
			System.out.println(e.getMessage());
			return new ModelAndView("error", "errorMessage", "error while login");
		}

		return new ModelAndView("book-success", "book", book);
	}
	
	@RequestMapping(value="/book/add", method = RequestMethod.GET)
	public ModelAndView initializeForm(HttpServletRequest request) throws Exception {		
		ModelAndView mv = new ModelAndView();
		mv.addObject("book", new Book());
		mv.setViewName("book-form");
		return mv;
	}
	
	
	@RequestMapping(value = "/book/publisherList", method = RequestMethod.GET)
	public ModelAndView publisherBookList(HttpServletRequest request) throws Exception {

		try {			
			HttpSession session= request.getSession();
			User u=(User) session.getAttribute("user");
			List<Book> books= booksDao.publisherList(u.getPersonId());
			return new ModelAndView("book-list", "books", books);
			
		} catch (BooksException e) {
			System.out.println(e.getMessage());
			return new ModelAndView("error", "errorMessage", "error while login");
		}
		
		
	}
	
}
