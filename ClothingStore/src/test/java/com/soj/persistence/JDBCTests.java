package com.soj.persistence;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class JDBCTests {

	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	@Test
	public void test() {
		
		try(Connection con =
				DriverManager.getConnection("jdbc:mysql://localhost:3306/tj?serverTimezone=Asia/Seoul&characterEncoding=utf-8",
						"root",
						"mysql")){
			System.out.println(con);
		}catch(Exception e) {
			fail(e.getMessage());
		}
	}

}
