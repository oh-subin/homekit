package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.DTO.productDTO;

public class productDAO {
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
	
	// 스타일에 맞는 상품 보여주는 기능
	public ArrayList<productDTO> showProducts(String pro_style) {
		
		productDTO products = null;
		ArrayList<productDTO> productsList = new ArrayList<>();
		
		// DB 연결	
		getConn(); 
		
		try {
			String sql = "select * from product where pro_style=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, pro_style);
			// ------------------- DB에 SQL 명령문 준비
			rs = psmt.executeQuery();
			// ------------------- SQL문 실행 / 실행 후 처리
			
			while(rs.next()) {
				
				// 전체 상품 데이터를 출력
				String pro_name = rs.getString(1);
				String pro_style1 = rs.getString(2);
				int pro_price = rs.getInt(3);
				String pro_img = rs.getString(4);
				
				// productDTO 객체를 1개씩 DB에서 받은 후, ArrayList인 productsList에 저장
				products = new productDTO(pro_name, pro_style1, pro_price, pro_img);
				productsList.add(products);
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return productsList;
	}
	

	// 상세정보 기능
	public productDTO moreInfo(String pro_name) {

		// DB연결 기능
		getConn();

		productDTO product = null;

		try {

			String sql = "select * from product where pro_name = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, pro_name);

			rs = psmt.executeQuery();

			if (rs.next()) {

				// product 객체에서 
				product = new productDTO(rs.getString(1), 
										 rs.getString(2), 
										 rs.getInt(3), 
										 rs.getString(4));

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return product;
	}

	
}
