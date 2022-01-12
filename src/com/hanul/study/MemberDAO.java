package com.hanul.study;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDAO {
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
	
	public TesterDTO login(String id, String pw) { //로그인 확인
		conn = getConn();
		String sql = "select * from tester_b where id=?, pw=?";
		TesterDTO dto = new TesterDTO();
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pw);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				dto.setName(rs.getString("name"));
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				return dto;
			}
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("login() Exception!");
		}finally {
			dbClose();
		}
		return null;
	}
	
	public boolean join(TesterDTO dto) { //회원가입
		conn = getConn();
		String sql = "insert into tester_b values name=?, id=?, pw=?";
		int succ=0;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getId());
			ps.setString(3, dto.getPw());
			succ = ps.executeUpdate();
			if(succ>0) {
				return true;
			}
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("join() Exception!");
		}finally {
			dbClose();
		}
		return false;
	}
	
	public ArrayList<String> makeIdList(){ //DB에 있는 회원 아이디를 리스트에 저장
		conn = getConn();
		String sql = "select id from tester_b";
		ArrayList<String> list = new ArrayList<>();
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(rs.getString("id"));
			}
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("makeIdList() Exception!");
		}finally {
			dbClose();
		}
		return list;
	}
	
	public boolean checkIdValid(ArrayList<String> list, String id) { //makeIdList()에서 저장한 리스트에 있는 아이디인지 확인(중복검사)
		for(int i=0; i<list.size(); i++) {
			if(id.equals(list.get(i))) {
				return false;
			}
		}
		return true;
	}
}