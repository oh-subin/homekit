package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.DTO.homekitDTO;

public class homekitDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;

	int cnt = 0;

	// DB연결
	public void getConn() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";
			conn = DriverManager.getConnection(url, dbid, dbpw);
			// db연결 수정x
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// DB연결 종료
	public void close() {

		try {

			if (rs != null) {
				rs.close();

			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 전체 홈키트 보여주기 기능
	public ArrayList<homekitDTO> showHomeKit() {

		homekitDTO homeKit = null;
		ArrayList<homekitDTO> homekitList = new ArrayList<>();

		// DB 연결
		getConn();

		try {
			String sql = "select * from homekit";
			psmt = conn.prepareStatement(sql);
			
			
			rs = psmt.executeQuery();
			// ------------------- SQL문 실행 / 실행 후 처리

			while (rs.next()) {

				// 전체 홈키트 데이터를 출력
				String kit_name = rs.getString(1);
				String kit_style = rs.getString(2);
				String kit_img = rs.getString(3);

				// hoemkitDTO 객체를 1개씩 DB에서 받은 후, ArrayList인 homekitList에 저장
				homeKit = new homekitDTO(kit_name, kit_style, kit_img);
				homekitList.add(homeKit);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return homekitList;
	}

}
