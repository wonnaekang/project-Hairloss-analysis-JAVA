package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DTO.productDTO;
import com.DTO.resultDTO;

public class DAO_3 {

	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	
	//연결하기
	public void getConn() {
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";
			
			conn = DriverManager.getConnection(url, dbid, dbpw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	//닫기
	public void close() {
		try {
			if(rs!=null) {
				rs.close();
			}if(psmt!=null) {
				 psmt.close();
			}if(conn!=null) {
				conn.close();
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	// 로그인
	public boolean Login(String id, String pw) {
		boolean check = true;
		try {
			getConn();
	        //----------------------------DB연결(수정X)
	        
	        String sql = "select * from mr_member where id = ? and pw = ?";//<--()이 부분 수정해야 함.???
	        psmt = conn.prepareStatement(sql);
	        
	        psmt.setString(1, id);
	        psmt.setString(2, pw);
	        //---------------------------SQL준비
	        
	        rs = psmt.executeQuery();
	        
	        if(rs.next()) {
	        	check = true;
	        }else {
	        	check = false;
	        }
	        
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return check;
	}
	

	//회원가입
	public int join(String id, String pw, String email) {//1.메소드구현
		
		try {//2. 예외처리구현
			getConn();
			
	        //----------------------------DB연결(수정X)
	        
	        String sql = "insert into mr_member values(?,?,?)"; //<-- ()수정
	        psmt = conn.prepareStatement(sql);
	        
	        psmt.setString(1, id);
	        psmt.setString(2, pw);
	        psmt.setString(3, email);
	        //---------------------------SQL준비
	        
	        cnt = psmt.executeUpdate();
	        //----------------------------SQL실행
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}	

	//설문조사
	public int Survey(String id, String que1,String que2,String que3,String que4,String que5,String que6,String que7,String que8,String que9,String que10) {
		
		try {
			getConn();
			
			String sql = "insert into survey values(sur_seq.nextval,?,sysdate,?,?,?,?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
	        
	        
	        psmt.setString(1, id);
	        psmt.setString(2, que1);
	        psmt.setString(3, que2);
	        psmt.setString(4, que3);
	        psmt.setString(5, que4);
	        psmt.setString(6, que5);
	        psmt.setString(7, que6);
	        psmt.setString(8, que7);
	        psmt.setString(9, que8);
	        psmt.setString(10, que9);
	        psmt.setString(11, que10);
	        //---------------------------SQL준비
	        
	        cnt = psmt.executeUpdate();
	        //----------------------------SQL실행
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
		}
	
	//진단결과 넣기
	public int Result(String id, String res) {
		
		try {
			getConn();
			
			String sql = "insert into result values(sur_seq.nextval,?,sysdate,?)";
			psmt = conn.prepareStatement(sql);
	        
	        
	        psmt.setString(1, id);
	        psmt.setString(2, res);
	        
	        //---------------------------SQL준비
	        
	        cnt = psmt.executeUpdate();
	        //----------------------------SQL실행
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
		}
	
	
	
	//마이페이지-관심제품 보기
	public ArrayList<productDTO> productSelect(String mem_id) {
		ArrayList<productDTO>list=new ArrayList<productDTO>();
			getConn();
	try {
		String sql = "select inter_date, pro_name, pro_url from interest_pro where mem_id=? order by inter_date";
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, mem_id);
		rs=psmt.executeQuery();
		while(rs.next()) { //rs.next()는 true, false로 표현---true일때 수행된 것---sql문이 성공적으로 수행되는 동안
			String inter_date = rs.getString(1); //번호는 첫번째 컬럼이므로 1.---컬럼의 순서대로 getInt/getString()에 번호 써야 제대로 받아옴
			String pro_name = rs.getString(2);
			String pro_url = rs.getString(3);
			
			productDTO dto = new productDTO(inter_date, pro_name, pro_url); //()안의 정보를 갖는 dto생성
			list.add(dto); //dto를 어레이리스트에 추가
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		close();
}return list;
}
	

//관심제품
public int Interest(String pro_name, String pro_url, String mem_id) {
	
	try {
		getConn();
		
		String sql = "insert into interest_pro values(sysdate,?,?,?)";
		psmt = conn.prepareStatement(sql);
        
        
        psmt.setString(1, pro_name);
        psmt.setString(2, pro_url);
        psmt.setString(3, mem_id);
        
        //---------------------------SQL준비
        
        cnt = psmt.executeUpdate();
        //----------------------------SQL실행
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		close();
	}
	return cnt;
	}

//진단결과-날짜 보기
public ArrayList<resultDTO> resultSelect(String mem_id) {
	ArrayList<resultDTO> list =new ArrayList<resultDTO>();
		getConn();
try {
	String sql = "select res_date, res from result where mem_id=? order by res_date ";
	
	psmt = conn.prepareStatement(sql);
	psmt.setString(1, mem_id);
	rs=psmt.executeQuery();
	while(rs.next()) { //rs.next()는 true, false로 표현---true일때 수행된 것---sql문이 성공적으로 수행되는 동안
		String res_date = rs.getString(1); //번호는 첫번째 컬럼이므로 1.---컬럼의 순서대로 getInt/getString()에 번호 써야 제대로 받아옴
		String res = rs.getString(2);
		
		resultDTO res_dto = new resultDTO(res_date, res); //()안의 정보를 갖는 dto생성
		list.add(res_dto); //dto를 어레이리스트에 추가
	}
} catch (SQLException e) {
	e.printStackTrace();
}finally {
	close();
}return list;
}

}
