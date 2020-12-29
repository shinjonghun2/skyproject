package kr.co.skypjt.config;

import javax.annotation.Resource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperFactoryBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import kr.co.skypjt.beans.UserBean;
import kr.co.skypjt.interceptor.CheckLoginInterceptor;
import kr.co.skypjt.interceptor.TopMenuInterceptor;
import kr.co.skypjt.mapper.AdminMapper;
import kr.co.skypjt.mapper.HotelMapper;
import kr.co.skypjt.mapper.HotelReviewMapper;
import kr.co.skypjt.mapper.ReservationMapper;

import kr.co.skypjt.mapper.TravelInfoMapper;
import kr.co.skypjt.mapper.TravelReviewMapper;
import kr.co.skypjt.mapper.UserMapper;


@Configuration 
@EnableWebMvc
@ComponentScan("kr.co.skypjt.controller")
@ComponentScan("kr.co.skypjt.dao")
@ComponentScan("kr.co.skypjt.service")

@PropertySource("/WEB-INF/properties/db.properties")
public class ServletAppContext implements WebMvcConfigurer{
	
	
	@Value("${db.classname}")
	   private String db_classname;
	   
	   @Value("${db.url}")
	   private String db_url;
	   
	   @Value("${db.username}")
	   private String db_username;
	   
	   @Value("${db.password}")
	   private String db_password;
	   
	   @Resource(name="loginUserBean")
	   private UserBean loginUserBean;
	
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/views/", ".jsp");
	}
	
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/**").addResourceLocations("/resources/");
	}
	
	//데이터베이스 접속 정보를 관리하는 Bean
	   @Bean
	   public BasicDataSource dataSource() {
	      BasicDataSource source = new BasicDataSource();
	      source.setDriverClassName(db_classname);
	      source.setUrl(db_url);
	      source.setUsername(db_username);
	      source.setPassword(db_password);
	      
	      return source;
	   }

	   //쿼리문과 접속 정보를 연동하는 객체
	      @Bean
	      public SqlSessionFactory factory(BasicDataSource source) throws Exception{
	         SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
	         factoryBean.setDataSource(source);
	         SqlSessionFactory factory = factoryBean.getObject();
	         return factory;
	      }
	      
	      @Bean
	 	 public MapperFactoryBean<HotelMapper> getHotelMapper(SqlSessionFactory factory) throws Exception{
	 	  MapperFactoryBean<HotelMapper> factoryBean = new MapperFactoryBean<HotelMapper>(HotelMapper.class);
	 	  factoryBean.setSqlSessionFactory(factory);
	 	  return factoryBean;
	 	 }
	      
	      @Bean
		 	 public MapperFactoryBean<TravelInfoMapper> getTravelInfoMapper(SqlSessionFactory factory) throws Exception{
		 	  MapperFactoryBean<TravelInfoMapper> factoryBean = new MapperFactoryBean<TravelInfoMapper>(TravelInfoMapper.class);
		 	  factoryBean.setSqlSessionFactory(factory);
		 	  return factoryBean;
		 	 }
	     
	      @Bean
		 	 public MapperFactoryBean<UserMapper> getUserMapper(SqlSessionFactory factory) throws Exception{
		 	  MapperFactoryBean<UserMapper> factoryBean = new MapperFactoryBean<UserMapper>(UserMapper.class);
		 	  factoryBean.setSqlSessionFactory(factory);
		 	  return factoryBean;
		 }
	      
	      
	      @Bean
		 	 public MapperFactoryBean<ReservationMapper> getReservationMapper(SqlSessionFactory factory) throws Exception{
		 	  MapperFactoryBean<ReservationMapper> factoryBean = new MapperFactoryBean<ReservationMapper>(ReservationMapper.class);
		 	  factoryBean.setSqlSessionFactory(factory);
		 	  return factoryBean;
		 	 }
	      @Bean
		 	 public MapperFactoryBean<HotelReviewMapper> getHotelReviewMapper(SqlSessionFactory factory) throws Exception{
		 	  MapperFactoryBean<HotelReviewMapper> factoryBean = new MapperFactoryBean<HotelReviewMapper>(HotelReviewMapper.class);
		 	  factoryBean.setSqlSessionFactory(factory);
		 	  return factoryBean;
		 	 }
	      
	      @Bean
		 	 public MapperFactoryBean<TravelReviewMapper> getTravelReviewMapper(SqlSessionFactory factory) throws Exception{
		 	  MapperFactoryBean<TravelReviewMapper> factoryBean = new MapperFactoryBean<TravelReviewMapper>(TravelReviewMapper.class);
		 	  factoryBean.setSqlSessionFactory(factory);
		 	  return factoryBean;
		 	 }
	      @Bean
		 	 public MapperFactoryBean<AdminMapper> getAdminMapper(SqlSessionFactory factory) throws Exception{
		 	  MapperFactoryBean<AdminMapper> factoryBean = new MapperFactoryBean<AdminMapper>(AdminMapper.class);
		 	  factoryBean.setSqlSessionFactory(factory);
		 	  return factoryBean;
		 	 }
	      
	      
	      @Override
		  	public void addInterceptors(InterceptorRegistry registry) {
		  		// TODO Auto-generated method stub
		  		WebMvcConfigurer.super.addInterceptors(registry);
		  		
		  		TopMenuInterceptor topMenuInterceptor = new TopMenuInterceptor(loginUserBean);
		  		
		  		InterceptorRegistration reg1 = registry.addInterceptor(topMenuInterceptor);
		  		reg1.addPathPatterns("/**");
		  		
		  		CheckLoginInterceptor checkLoginInterceptor = new CheckLoginInterceptor(loginUserBean);
		  		InterceptorRegistration reg2 = registry.addInterceptor(checkLoginInterceptor);
		  		reg2.addPathPatterns("/reservation","/hotel_review_read","/hotel_review_write");
		  	} 
		 	 
		 	 //오류 메시지 등록
		 	 @Bean
		 	 public ReloadableResourceBundleMessageSource messageSource() {
		 		 ReloadableResourceBundleMessageSource res=new ReloadableResourceBundleMessageSource();
		 		 res.setBasename("/WEB-INF/properties/error_message");
		 		 return res;
		 	 }
	 	 
	 	    //properties 오류 (메세지와 property 충돌) 소스와 메세지 별도관리하도록 property를 Bean으로등록
	 		@Bean
	 		public static PropertySourcesPlaceholderConfigurer PropertySourcesPlaceholderConfigurer() {
	 			return new PropertySourcesPlaceholderConfigurer();
	 		}
		 	
		 		
	 		@Bean
	 		public StandardServletMultipartResolver multipartResolver() {
	 			return new StandardServletMultipartResolver();
	 		}
		 	 	      
	      
	      
}
