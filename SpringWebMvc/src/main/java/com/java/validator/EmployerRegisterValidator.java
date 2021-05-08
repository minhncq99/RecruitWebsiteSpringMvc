package com.java.validator;

import com.java.pojo.EmployerRegisterForm;
import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

/**
 *
 * @author minh
 */
public class EmployerRegisterValidator implements ConstraintValidator<EmployerRegister, EmployerRegisterForm>{

    @Override
    public void initialize(EmployerRegister constraintAnnotation) {
    }

    @Override
    public boolean isValid(EmployerRegisterForm form, ConstraintValidatorContext context) {
        return form.getPassword().equals(form.getRePassword());
    }
    
}
