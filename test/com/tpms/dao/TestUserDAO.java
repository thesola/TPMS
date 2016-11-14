package com.tpms.dao;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tpms.po.Tuser;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={ "/applicationContext.xml" })
public class TestUserDAO {
	
	@Autowired
	private BaseDAO<Tuser> userDAO;

	@Test
	public void testInsert() {
		
		Tuser user = new Tuser("1402753115", "753115", "2");
		
		assertEquals(1, userDAO.insert(user));
		
	}
	
	@Test
	public void testDelete(){
		
		Tuser tuser = new Tuser("1402753115", "753115", "2");
		
		assertEquals(1, userDAO.delete(tuser));
		
	}

}
