package com.java.configs;

import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;

/**
 *
 * @author minh
 */
public class TilesConfig {
    @Bean
    public UrlBasedViewResolver getUrlBasedViewResolver() {
        UrlBasedViewResolver resolver = new UrlBasedViewResolver();
        resolver.setViewClass(TilesView.class);
        resolver.setOrder(-2);
        
        return resolver;
    }
    
    @Bean
    public TilesConfigurer tilesConfigurer() {
        TilesConfigurer conf = new TilesConfigurer();
        conf.setDefinitions("/WEB-INF/tiles.xml");
        conf.setCheckRefresh(true);
        return conf;
    }
}
