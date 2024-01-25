package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBManager {
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			// jdbc/myoracle 이란 이름의 객체를 찾아서 DataSource를 받는다
			DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
			//ds가 생성 되었으므로 Connection을 구합니다.
			conn = ds.getConnection();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return conn;
	}
	
	//select를 수행한 후 리소스 해제를 위한 메소드
	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		try {
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//DML(insert, update, delete)를 수행 한 후 리소스 해제를 위한 메소드
	public static void close(Connection conn, Statement stmt) {
		try {
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	
}