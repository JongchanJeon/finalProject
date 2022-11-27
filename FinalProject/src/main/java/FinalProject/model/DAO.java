package FinalProject.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
public class DAO {
	private PreparedStatement pstmt = null;
	private Connection con = null;
	
	Context init = null;
	DataSource ds = null;
	
	ResultSet rs = null;
	public DAO() {
		super();
		dbConnect();
	}
	
	public void dbConnect() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc_mariadb");
			con = ds.getConnection();
			
			System.out.println("DB연결 성공!!!");
		}catch(Exception e) {
			System.out.println("DB연결 실패!!!");
			e.printStackTrace();
		}
	}
	public void disConnect() {
		if (pstmt != null) {
			try {
				pstmt.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (rs != null) {
			try {
				rs.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
//	 public ArrayList<DTO> getBeerList() {
//		 ArrayList<DTO> list = new ArrayList<DTO>();
//		
//		 String SQL = "select * from user";
//		 try {
//			 pstmt = con.prepareStatement(SQL);
//			 ResultSet rs = pstmt.executeQuery();
//			 
//			 while (rs.next()) {
//				 DTO dto = new DTO();
//				 dto.setUser_id(rs.getString("user_id"));
//				 dto.setUser_pw(rs.getString("user_pw"));
//			 }
//		 }
//	 }
	public boolean userJoin(DTO info) {
		boolean success = false;
		dbConnect();

		String sql = "insert into user(user_id, user_pw, user_number, user_name, user_address)";
		sql += " values (?, ?, ?, ? ,?)";
		System.out.println("sql 구문 : " + sql);
		System.out.println(info.getUser_id());
		System.out.println(info.getUser_pw());
		System.out.println(info.getUser_number());
		System.out.println(info.getUser_name());
		System.out.println(info.getUser_address());
		
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, info.getUser_id());
			pstmt.setString(2, info.getUser_pw());
			pstmt.setString(3, info.getUser_number());
			pstmt.setString(4, info.getUser_name());
			pstmt.setString(5, info.getUser_address());
			
			pstmt.executeUpdate();
			success = true;
		} catch (SQLException e) {
			e.printStackTrace();
			return success;
		} finally {
			disConnect();
		}
		return success;
	}
	
	public boolean tryLogin(DTO dto, String login_id, String login_pw) {
		boolean success = false;
		dbConnect();
		
		String SQL = "select * from user";
		 try {
			 pstmt = con.prepareStatement(SQL);
			 ResultSet rs = pstmt.executeQuery();

			 while (rs.next()) {
				 dto.setUser_id(rs.getString("user_id"));
				 dto.setUser_pw(rs.getString("user_pw"));
				 
				 if (login_id.equals(dto.getUser_id())) {
					 System.out.println("존재하는 아이디");
					if(login_pw.equals(dto.getUser_pw())) {
						System.out.println("아이디와 비밀번호 일치");
						dto.setCorrect_login(true);
						dto.setLogin_id(login_id);
						dto.setLogin_pw(login_pw);
						System.out.println("로그인 완료");
						break;
					}
				 }
			 }
			 
		 }catch (SQLException e) {
			 e.printStackTrace();
		 }
		 return success;
}
}
