package com.java.configs;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 *
 * @author minh
 */
@EnableWebSecurity
@EnableTransactionManagement
@ComponentScan(basePackages = {
    "com.java.repository",
    "com.java.service"
})
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private UserDetailsService userDetailsService;
    
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
    
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService)
            .passwordEncoder(passwordEncoder());
    }
    
     @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.formLogin().loginPage("/login")
            .usernameParameter("username")
            .passwordParameter("password");
        
        http.formLogin().defaultSuccessUrl("/")
                        .failureUrl("/login/?error");
        
        http.logout().logoutSuccessUrl("/login/");
        
        http.exceptionHandling()
            .accessDeniedPage("/login?accessDenied");
        
        http.authorizeRequests().antMatchers("/").permitAll()
            .antMatchers("/**/employer")
            .access("hasRole('ROLE_EMPLOYER')")
            .antMatchers("/**/applicant")
            .access("hasRole('ROLE_APPLICANT')");
        http.csrf().disable();
    }
}
