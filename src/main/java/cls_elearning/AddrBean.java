package cls_elearning;

import java.sql.*;
import java.util.*;

public class AddrBean {
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
	String jdbc_url = "jdbc:oracle:thin:@localhost:1521:orcl";
	
	// ��� ����
	void connect() {
		try {
			Class.forName(jdbc_driver);
			
			conn = DriverManager.getConnection(jdbc_url,"C##WEB01", "1234");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// ��� ����
	void disconnect() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	// �ּҷ� ������ ����
	public boolean insertDB(AddrBook addrbook) {
		connect();
		
		String sql="insert into qa(ab_name,ab_title,ab_content,ab_pwd) values(?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, addrbook.getAb_name());
			pstmt.setString(2, addrbook.getAb_title());
			pstmt.setString(3, addrbook.getAb_content());
			pstmt.setString(4, addrbook.getAb_pwd());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		return true;
	}
	
	// �ּҷ� ������ ����
	public boolean updateDB(AddrBook qa) {
		connect();
		
		String sql = "update qa set ab_name=?,ab_title=?,ab_content=?,ab_pwd=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, qa.getAb_name());
			pstmt.setString(2, qa.getAb_title());
			pstmt.setString(3, qa.getAb_content());
			pstmt.setString(4, qa.getAb_pwd());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		return true;
	}
	
	//�ּҷ� ������ ����
	public boolean deleteDB(String gb_pwd) {
		connect();
		
		String sql="delete from qa where ab_pwd=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,gb_pwd);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		return true;
	}
	
	// �ּҷ� �Ѱ� ������ ��������
	public AddrBook getDB(String gb_pwd) {
		connect();
		
		String sql = "select * from qa where ab_pwd=?";
		AddrBook addrbook = new AddrBook();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, gb_pwd);
			ResultSet rs = pstmt.executeQuery();
			
			rs.next();
			addrbook.setAb_name(rs.getString("ab_name"));
			addrbook.setAb_title(rs.getString("ab_title"));
			addrbook.setAb_content(rs.getString("ab_content"));
			addrbook.setAb_pwd(rs.getString("ab_pwd"));
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return addrbook;
}
	
	// 
	public ArrayList<AddrBook> getDBList() {
		connect();
		ArrayList<AddrBook> datas = new ArrayList<AddrBook>();
		
		String sql = "select * from qa order by ab_pwd desc";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				AddrBook addrbook = new AddrBook();
				
				addrbook.setAb_name(rs.getString("ab_name"));
				addrbook.setAb_title(rs.getString("ab_title"));
				addrbook.setAb_content(rs.getString("ab_content"));
				addrbook.setAb_pwd(rs.getString("ab_pwd"));
				datas.add(addrbook);
			}
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return datas;
	}
	
}
