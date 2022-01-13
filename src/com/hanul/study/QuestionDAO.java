package com.hanul.study;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class QuestionDAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public Connection getConn() {
		try {
			String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
			String user = "hanul";
			String password = "0000";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getConn() Exception!");
		}
		return conn;
	}
	
	public void dbClose() {
		try {
			if (rs != null)
				rs.close();
			if (ps != null)
				ps.close();
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("dbClose() Exception!");
		}
	}
	
	public ArrayList<TestDTO> selectAll(int subno){ //DB에 저장된 모든 값을 리스트로 저장
		conn = getConn();
		String sql = "select * from test_b where subno=? order by dbms_random.value";
		ArrayList<TestDTO> list = new ArrayList<>();
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, subno);
			rs = ps.executeQuery();
			while(rs.next()) {
				TestDTO dto = new TestDTO();
				dto.setNo(rs.getString("no"));
				dto.setQuestion(rs.getString("question"));
				dto.setAnswer(rs.getString("answer"));
				dto.setSubno(rs.getInt("subno"));
				dto.setView1(rs.getString("view1"));
				dto.setView2(rs.getString("view2"));
				dto.setView3(rs.getString("view3"));
				dto.setView4(rs.getString("view4"));
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("selectAll() Exception!");
		}finally {
			dbClose();
		}
		return list;
	}
}