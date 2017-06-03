package com.kaustubh.controller;

import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kaustubh.dao.OrderDAO;
import com.kaustubh.exception.BooksException;
import com.kaustubh.pojo.Book;
import com.kaustubh.pojo.Order;
import com.kaustubh.pojo.OrderItem;
import com.kaustubh.pojo.User;
import com.kaustubh.validator.OrderValidator;
import com.kaustubh.exception.OrderException;

@Controller
@RequestMapping("/order/*")
public class OrderController {

	
	@Autowired
	@Qualifier("orderDao")
	OrderDAO orderDao;
	
	@Autowired
	@Qualifier("orderValidator")
	OrderValidator orderValidator;
	
	@Autowired
	@Qualifier("mailSender")
	private MailSender mailSender;
	
	@InitBinder("order")
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(orderValidator);
	}
	
	@RequestMapping(value = "/order/list", method = RequestMethod.GET)
	public ModelAndView listBook(HttpServletRequest request) throws Exception {

		try {			
			
			List<Book> books= orderDao.bookList();
			request.getSession().setAttribute("books", books);
			return new ModelAndView("customer-list");
			
		} catch (BooksException e) {
			System.out.println(e.getMessage());
			return new ModelAndView("error", "errorMessage", "error while login");
		}
		
		
	}
	
	@RequestMapping(value="/order/cart.htm", method = RequestMethod.POST)
	public ModelAndView cartUpdate(HttpServletRequest request){
		User u = (User)request.getSession().getAttribute("user");
		long bookId = Long.parseLong(request.getParameter("bookId"));
		String field  = "orderedQuantity"+String.valueOf(bookId);
		int orderedQuantity = Integer.parseInt(request.getParameter(field));
		ArrayList<OrderItem> orderItemList = orderDao.createOrderItem(bookId, orderedQuantity, u);
		for(OrderItem oi:orderItemList){
			System.out.println("Printing order items name: "+oi.getTitle());
			System.out.println("Printing order object:"+oi.getOrder());
		}
		request.getSession().setAttribute("orderItemList", orderItemList);
		return new ModelAndView("customer-list" );
	}
	
	@RequestMapping(value="/order/cartfinal.htm", method = RequestMethod.POST)
	public ModelAndView cartfinal(HttpServletRequest request){

		return new ModelAndView("cart");
	}
	
	@RequestMapping(value="/order/confirmation.htm", method = RequestMethod.POST)
	public ModelAndView orderConfirmation(HttpServletRequest request){
		//return "confirmation";
		
		ArrayList<OrderItem> orderItemList = (ArrayList<OrderItem>)request.getSession().getAttribute("orderItemList");

		Order order = orderItemList.get(0).getOrder();
		
		try {
			orderDao.create(order);
		} catch (OrderException e1) {
			// TODO Auto-generated catch block
			System.out.println("Exception: " + e1.getMessage());
			return new ModelAndView("error", "errorMessage", "error while placing order");
		}
		
		
		for(OrderItem item:orderItemList){

		try {
			orderDao.submitOrder(item);
			
			
		} catch (OrderException e) {
			System.out.println("Exception: " + e.getMessage());
			return new ModelAndView("error", "errorMessage", "error while placing order");
		}
		}
		order.getEmail();
		SimpleMailMessage email = new SimpleMailMessage();
        email.setTo(order.getEmail());
        email.setSubject("Blaze eBooks Order Confirmation");
        email.setText("Thank you for your order!!");
        mailSender.send(email);
		return new ModelAndView("order-confirmation");
	}
	
	@RequestMapping(value="/order/delivery.htm", method = RequestMethod.POST)
	public ModelAndView delivery(HttpServletRequest request){
		//return "delivery";
		float orderTotal = 0;
		ArrayList<OrderItem> myList = (ArrayList<OrderItem>)request.getSession().getAttribute("orderItemList");
			for(OrderItem oi : myList){
			
			orderTotal = orderTotal+(oi.getOrderedQuantity()*oi.getPrice());
		}
		Order order = myList.get(0).getOrder();
		order.setOrderTotal(orderTotal);
		
		return new ModelAndView("delivery-address");
	}
	
	@RequestMapping(value="/order/payment.htm", method = RequestMethod.POST)
	public String payment(HttpServletRequest request){
		ArrayList<OrderItem> myList = (ArrayList<OrderItem>)request.getSession().getAttribute("orderItemList");
			
		Order order = myList.get(0).getOrder();

		order.setName(request.getParameter("fullname"));
		order.setEmail(request.getParameter("email"));
		order.setPhoneNumber(request.getParameter("contact"));
		order.setStreet(request.getParameter("street"));
		order.setCity(request.getParameter("city"));
		order.setCountry(request.getParameter("country"));
		order.setState(request.getParameter("state"));
		order.setZip(Integer.parseInt(request.getParameter("zip")));
		

		return "payment";
	}
	
	@RequestMapping(value="/order/review.htm", method = RequestMethod.POST)
	public String review(HttpServletRequest request){
		
		ArrayList<OrderItem> myList = (ArrayList<OrderItem>)request.getSession().getAttribute("orderItemList");
			Order order = myList.get(0).getOrder();
			
			order.setCardName(request.getParameter("cardName"));
			order.setCardNo(Long.parseLong(request.getParameter("cardNo")));
			order.setExpiryMonth(Integer.parseInt(request.getParameter("expiryMonth")));
			order.setExpiryYear(Integer.parseInt(request.getParameter("expiryYear")));
			order.setCardCvv(Integer.parseInt(request.getParameter("cardCvv")));
			
			
			DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
			Date date = new Date();
			Calendar c = Calendar.getInstance(); 
			c.setTime(date); 
			c.add(Calendar.DATE, 3);
			date = c.getTime();			
			System.out.println(dateFormat.format(date));
			order.setDeliveryDate(dateFormat.format(date));
			
			User user = (User)request.getSession().getAttribute("user");
			order.setUser(user);

		return "review";
	}
}
