package review;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class addDao {
	String id = "root";
	String password = "111111";
	String url = "jdbc:mysql://localhost:3306/jspdb?characterEncoding=utf-8";
		
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
public void connect_cp() {
		
		try {
			
			Context initctx = new InitialContext();
			
			//Context.xml 접근
			Context envctx = (Context)initctx.lookup("java:/comp/env");
			
			//커넥션 풀에 접근 (커넥션을 1개 얻기위해서)
			DataSource ds = (DataSource) envctx.lookup("jdbc/pool");
			
			//커넥션을 하나 빌려오기 
			conn = ds.getConnection();
			
			System.out.println(" ** 커넥션 풀 ** 을 이용하여 디비 연결 성공 !! ");
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void disConnect() {
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	//새로운 주소데이터 디비에 저장 메소드 
	public void insertAdd(addDo ado) {
		System.out.println("insertAdd() 처리 시작 !! ");
		connect_cp();
		
		//SQL 처리
		String sql = "insert into rv (title, content) "
				+ "values (?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ado.getTitle());
			pstmt.setString(2, ado.getContent());
			
			pstmt.executeUpdate();
			
			System.out.println("insertAdd() 처리 완료 !! ");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		disConnect();
		
	}
	
	//전체 데이터 가져오기
	public ArrayList<addDo> getAllAdd() {
		System.out.println("getAllAdd() 처리 시작 !!");
		connect_cp();
		
		//리턴 데이터
		ArrayList<addDo> aList = new ArrayList<addDo>();
		
		//SQL 처리 시작 !!
		String sql = "select * from rv";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				addDo ado = new addDo();
				ado.setNum(rs.getInt(1));
				ado.setTitle(rs.getString(2));
				ado.setContent(rs.getString(3));
				
				aList.add(ado);
			}
			System.out.println("getAllList() 처리 완료 !!");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		disConnect();
		return aList;
		
	}
	
	//하나의 주소록 데이터 가져오기
	public addDo getOneAdd(int num) {
		System.out.println("getOneAdd() 처리 시작");
		connect_cp();
		
		//SQL 처리 시작
		addDo ado = new addDo();
		try {
			String sql = "select * from rv where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ado.setNum(rs.getInt(1));
				ado.setTitle(rs.getString(2));
				ado.setContent(rs.getString(3));
			}
			disConnect();
			System.out.println("getOneAdd() 처리 완료 !!");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return ado;
	}
	
	public void modifyAdd(addDo ado) {
		connect_cp();
		try {
			String sql = "update rv set title=?, content=?" + "where num=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ado.getTitle());
			pstmt.setString(2, ado.getContent());
			pstmt.setInt(3, ado.getNum());
			pstmt.executeUpdate();
			disConnect();
			System.out.println("modify 완료");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void deleteAdd(int num) {
		connect_cp();
		try {
			String sql = "delete from rv where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			
			disConnect();
			System.out.println("delete 완료");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
