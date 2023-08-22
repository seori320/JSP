package login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class signDao {
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	public void connect_cp() {
		try{
			Context initctx = new InitialContext();
			Context envctx = (Context)initctx.lookup("java:/comp/env");
			DataSource ds = (DataSource) envctx.lookup("jdbc/pool");
			con = ds.getConnection();
			System.out.println("db 연결 완료");
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	public void disconnect() {
		if(con != null) {
			try {
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if(rs != null) {
			try {
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public ArrayList<signDo> v = new ArrayList<signDo>();
	
	public void insert (signDo bean) {
		connect_cp();
		
		String sql = "insert into users (id, password, name, age) values" + "(?, ?, ?, ?)";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getPassword());
			pstmt.setString(3, bean.getName());
			pstmt.setString(4, bean.getAge());
			
			pstmt.executeUpdate();
			System.out.println("insert 완료");
		} catch (Exception e) {
			e.printStackTrace();
		}
		disconnect();
	}
	
	
	
}
