package com.kaustubh.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.kaustubh.dao.UserDAO;
import com.kaustubh.exception.UserException;
import com.kaustubh.pojo.User;

@Component
public class UserValidator implements Validator {

//	@Autowired
//	@Qualifier("userDao")
//	UserDAO userDao;
	
	UserDAO userDao = new UserDAO();
	
	public boolean supports(Class aClass) {
		return aClass.equals(User.class);
	}

	public void validate(Object obj, Errors errors) {
		User user = (User) obj;
		
//		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "error.invalid.user", "First Name Required");
//		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "error.invalid.user", "First Name Required");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "error.invalid.firstName", "First Name Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "error.invalid.lastName", "Last Name Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName", "error.invalid.userName", "User Name Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "error.invalid.password", "Password Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "error.invalid.email", "Email Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phoneNumber", "error.invalid.phoneNumber", "Number Required");
		// check if user exists
	
		try {
            User u = userDao.checkUsername(user.getUserName());
            //System.out.println(u.getFirstName()+"========================================");
            ///System.out.println(u+"==========================================");
            //String pattern = "(?=.*[^ ])[a-zA-Z0-9 ]+" ;
            if(u != null)
            {
                errors.rejectValue("userName", "error.invalid.userName", "Username already exists");
            }
        } catch (UserException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            
        }
        
        //Regex for all the fields
        
        String pattern = "(?=.*[^ ])[a-zA-Z0-9 ]+" ;
        String emailpattern = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
               + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
        String phonePattern = "\\d{3}-\\d{7}";
       if(!user.getFirstName().matches(pattern)){
           errors.rejectValue("firstName", "error.invalid.firstName", "Only Alphanumeric Values Allowed");
           return;
       }
       else if(!user.getLastName().matches(pattern)){
                errors.rejectValue("lastName", "error.invalid.lastName", "Only Alphanumeric Values Allowed");
                return;
            }
       else if(!user.getUserName().matches(pattern)){
                        errors.rejectValue("userName", "error.invalid.userName", "Only Alphanumeric Values Allowed");
                        return;
                    }
                    
       else if(!user.getEmail().matches(emailpattern)){
                        errors.rejectValue("email", "error.invalid.email", "Invalid Email ID");
                        return;
                }        
       else if(!user.getPhoneNumber().matches(phonePattern)){
                        errors.rejectValue("phoneNumber", "error.invalid.phoneNumber", "Correct Pattern: xxx-xxxxxxx");
                        return;
                }
                
    }
		
		
	}
