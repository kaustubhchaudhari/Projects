package com.kaustubh.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.kaustubh.pojo.Book;

@Component
public class BookValidator implements Validator {

	@Override
	public boolean supports(Class aClass) {
		return aClass.equals(Book.class);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		Book book = (Book) obj;
		
		String image=book.getPhoto().getOriginalFilename();
		
		if(image.equals("")){
			errors.rejectValue("photo", "error.invalid.photo", "Please upload a photo");
		}
		
		else if(!image.endsWith("jpg") && !image.endsWith("png") && !image.endsWith("jpeg")){
			errors.rejectValue("photo",  "error.invalid.photo", "Please upload only jpg,png or jpeg files");
		}
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "title", "error.invalid.title", "Book title is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "author", "error.invalid.author", "Author is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "isbn", "error.invalid.isbn", "ISBN is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "year", "error.invalid.year", "Year is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "price", "error.invalid.price", "Price is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "quantity", "error.invalid.quantity", "Quantity is Required");

		String isbn= String.valueOf(book.getIsbn());
		String year= String.valueOf(book.getYear());
		String price= String.valueOf(book.getPrice());
		String quantity= String.valueOf(book.getQuantity());
		
		String pattern = "(?=.*[^ ])[a-zA-Z0-9 ]+" ;
        String emailpattern = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
               + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
        String phonePattern = "\\d{3}-\\d{7}";
       if(!book.getTitle().matches(pattern)){
           errors.rejectValue("title", "error.invalid.title", "Only Alphanumeric Values Allowed");
           return;
       }
       else if(!book.getAuthor().matches(pattern)){
                errors.rejectValue("author", "error.invalid.author", "Only Alphanumeric Values Allowed");
                return;
            }
       else if(!isbn.matches("\\d+")){
                        errors.rejectValue("isbn", "error.invalid.isbn", "Enter valid isbn");
                        return;
                    }
                    
       else if(!year.matches("\\d{4}")){
                        errors.rejectValue("year", "error.invalid.year", "Enter valid year");
                        return;
                }        
       else if(!price.matches("^([+-]?\\d*\\.?\\d*)$")){
                        errors.rejectValue("price", "error.invalid.price", "Enter floating point number");
                        return;
                }
       
       else if(!quantity.matches("\\d+")){
           errors.rejectValue("quantity", "error.invalid.quantity", "Enter integer value");
           return;
   }
                
    }
		
		
	}

