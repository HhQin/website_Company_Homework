package com.company.website;

import com.company.website.entity.User;
import com.company.website.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;


@RunWith(SpringRunner.class)
@SpringBootTest
public class WebsiteApplicationTests {


	@Resource(name = "userService")
	UserService userService;

	@Test
	public void estUserService() {
		User user = userService.findIdByName("hello");
		System.out.println(user.getId());
	}

}
