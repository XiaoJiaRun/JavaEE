
import java.sql.*;

public class inster {
    boolean inster1(String s1, String s2) {
        String driver="com.mysql.jdbc.Driver";
	String user="root";
	String password="123456";
	String url="jdbc:mysql://localhost:13306/student";
        ResultSet rs = null;
        try{
		Class.forName(driver);
		Connection conn=(Connection) DriverManager.getConnection(url,user,password);
		System.out.println("连接成功!");
		Statement stmt=conn.createStatement();
                String sql1 = "SELECT * FROM user WHERE name =" +s1;
		String sql = "insert into user(name,password) values(?,?)";
                String sql2 = "update user set password= '"+s2+"'where name = " + s1;
                
                PreparedStatement ps = null;
                 
                ResultSet rs2 = stmt.executeQuery(sql1);
                System.out.println("查询成功!");
                
                if(!rs2.next()) {
                    ps = conn.prepareStatement(sql); 
                    ps.setString(1, s1);
                    ps.setString(2, s2);
                }else {
                    ps = conn.prepareStatement(sql2); 
                }
		int result = ps.executeUpdate();
		if (result != 0) {
                    return true;
		}                                                      
		rs.close();
		stmt.close();
		conn.close();
	}catch(ClassNotFoundException e){
            
		e.printStackTrace();
	}catch(SQLException e) {
            System.out.println("查询失败!");
		e.printStackTrace();
	}
        return false;
    }
}
