package com.bridgelab.program;
import java.sql.*;
public class Main {

	public static void main(String[] args) throws Exception {
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/SampleTable";
		String uname = "root";
		String pass = "Deepak@18";
		String query = "select * from Sample";
	
		Connection con = DriverManager.getConnection(url,uname,pass);
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		while(rs.next())
		
		//String name = rs.getString("EmpFirstName");
		System.out.println(rs.getInt(1)+ " " + rs.getString(2)+ " " + rs.getString(3) + " " + rs.getString(4) + " " + rs.getString(5));

		st.close();
		con.close();
		}catch(Exception e) {
			System.out.println(e);
		}
	}

}
