package com.java.validator;

import com.java.pojo.ApplicantRegisterForm;
import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

/**
 *
 * @author minh
 */
public class ApplicantRegisterValidator implements ConstraintValidator<ApplicantRegister, ApplicantRegisterForm> {
    @Override
    public void initialize(ApplicantRegister constraintAnnotation) {
    }

    @Override
    public boolean isValid(ApplicantRegisterForm form, ConstraintValidatorContext context) {
       return form.getPassword().equals(form.getRePassword());
    }
}
