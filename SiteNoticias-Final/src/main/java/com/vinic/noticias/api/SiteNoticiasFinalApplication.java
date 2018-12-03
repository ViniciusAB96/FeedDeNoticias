package com.vinic.noticias.api;

import java.util.HashMap;
import java.util.Map;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.handler.SimpleUrlHandlerMapping;
import org.springframework.web.servlet.mvc.ParameterizableViewController;

@Configuration
@SpringBootApplication
public class SiteNoticiasFinalApplication {

	   @Bean
	    public ParameterizableViewController myViewController () {
	        ParameterizableViewController c = new ParameterizableViewController();
	        c.setViewName("index");
	        c.setStatusCode(HttpStatus.OK);
	        return c;
	    }
	    
	    @Bean
	    public HandlerMapping myHandlerMapping () {
	        SimpleUrlHandlerMapping m = new SimpleUrlHandlerMapping();
	        Map<String, Object> map = new HashMap<>();
	        map.put("/home", myViewController());
	        m.setUrlMap(map);
	        m.setOrder(1);
	        return m;
	    }
	    
	
	
	public static void main(String[] args) {
		SpringApplication.run(SiteNoticiasFinalApplication.class, args);
	}
}
