package com.kaustubh.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.kaustubh.pojo.Order;

@Component
public class OrderValidator implements Validator {

	@Override
	public boolean supports(Class aClass) {
		return aClass.equals(Order.class);
	}
	@Override
	public void validate(Object obj, Errors errors) {
		Order order = (Order) obj;
		
		//ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "error.invalid.user", "First Name Required");

	}

}