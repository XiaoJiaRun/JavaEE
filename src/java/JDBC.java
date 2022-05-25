import com.sun.crypto.provider.RSACipher;
import java.sql.*;
import java.util.HashMap;
public class JDBC {
    public  HashMap<String, String> jdbc() {
                String driver="com.mysql.jdbc.Driver";
		String user="root";
		String password="123456";
		String url="jdbc:mysql://localhost:13306/student";
                ResultSet rs = null;
                HashMap<String, String> map = new HashMap<String, String>();
		try{
			Class.forName(driver);
			Connection conn=DriverManager.getConnection(url,user,password);
			System.out.println("连接成功!");
			Statement stmt=conn.createStatement();
			rs=stmt.executeQuery("SELECT name,password FROM user;");
			System.out.println("查询成功!");
                        			
                         while(rs.next()) {
                            map.put(rs.getString(1),rs.getString("password"));
                        }                  
                                                
                                                
			rs.close();
			stmt.close();
			conn.close();
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}
                return map;
    }
    
}

