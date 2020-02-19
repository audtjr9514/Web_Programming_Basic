package lecture1.jdbc1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import lecture1.DB;

public class UserDAO {
	public static List<User> findAll() throws Exception {
		String sql = "select u.*,  d.departmentName " + "FROM user u LEFT JOIN department d on u.departmentId = d.id;";
		try (Connection connection = DB.getConnection("student1"); // Connection : DB에 연결하기 위한 객체
				PreparedStatement statement = connection.prepareStatement(sql); // PreparedStatement : SQL 명령을 실행하기 위한 객체
				ResultSet resultSet = statement.executeQuery()) { // executeQuery 메소드를 실행 -< DB에서 SQL 실행 -> 결과를
																	// ResultSet 객체에 전달
			ArrayList<User> list = new ArrayList<User>();
			// DB의 Student테이블에서 조회한 데이터를 Student 객체에 채우고,
			// Student의 객체들을 ArrayList에 채워서 -> ArrayList 객체를 리턴한다.
			while (resultSet.next()) {
				User user = new User();
				user.setId(resultSet.getInt("id"));
				user.setUserid(resultSet.getString("userid"));
				user.setPassword(resultSet.getString("password"));
				user.setName(resultSet.getString("name"));
				user.setEmail(resultSet.getString("email"));
				user.setDepartmentId(resultSet.getInt("departmentId"));
				user.setDepartmentName(resultSet.getString("departmentName"));
				user.setEnabled(resultSet.getBoolean("enabled"));
				user.setUserType(resultSet.getString("userType"));
				list.add(user);
			}
			return list;
		}
	}
}