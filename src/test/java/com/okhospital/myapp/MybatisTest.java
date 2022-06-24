package com.okhospital.myapp;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.okhospital.controller.HomeController;
import com.okhospital.myapp.mapper.TimeMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MybatisTest {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	//@Setter(onMethod)
	@Autowired
	private TimeMapper timeMapper;
	
	
	@Test
	void test() {
		logger.info(timeMapper.getClass().getName());
		logger.info(timeMapper.getTime1());
		//fail("Not yet implemented");
	}

}
