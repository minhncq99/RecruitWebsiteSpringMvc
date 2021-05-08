package com.java.validator;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import javax.validation.Constraint;
import javax.validation.Payload;

/**
 *
 * @author minh
 */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = ApplicantRegisterValidator.class)
public @interface ApplicantRegister {
    String message() default "Xác nhận mật khẩu không hợp lệ";
    Class<?>[] groups() default {};
    public abstract Class<? extends Payload>[] payload() default {};
}
