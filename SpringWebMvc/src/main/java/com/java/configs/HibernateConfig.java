package com.java.configs;

import java.util.Properties;
import javax.sql.DataSource;
import org.hibernate.cfg.AvailableSettings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.*;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.*;

/**
 *
 * @author minh
 */
@Configuration
@PropertySource(value = "classpath:database.properties")
public class HibernateConfig {
    @Autowired
    private Environment env;
    
    public Properties getProperties() {
        Properties props = new Properties();
        props.setProperty(AvailableSettings.DIALECT, env.getProperty("hibernate.dialect"));
        props.setProperty(AvailableSettings.SHOW_SQL, env.getProperty("hibernate.showSql"));
        return props;
    }
    
    @Bean
    public DataSource getDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(env.getProperty("hibernate.connection.driverClass"));
        dataSource.setUrl(env.getProperty("hibernate.connection.url"));
        dataSource.setUsername(env.getProperty("hibernate.connection.username"));
        dataSource.setPassword(env.getProperty("hibernate.connection.password"));
        return dataSource;
    }
    
    @Bean
    public LocalSessionFactoryBean getLocalSessionFactory() {
        LocalSessionFactoryBean factory = new LocalSessionFactoryBean();
        factory.setPackagesToScan("com.java.pojo");
        factory.setDataSource(getDataSource());
        factory.setHibernateProperties(getProperties());
        return factory;
    }
    
    
    @Bean
    public HibernateTransactionManager transactionManager() {
        HibernateTransactionManager transactionManager = new HibernateTransactionManager();
        transactionManager.setSessionFactory(getLocalSessionFactory().getObject());
        return transactionManager;
    }
}
