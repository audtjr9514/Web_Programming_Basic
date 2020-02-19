package lecture1.jdbc1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import lecture1.DB;

public class StudentDAO {
	public static List<Student> findAll() throws Exception {
		String sql = "SELECT s.*, d.departmentName " + // +로 쿼리를 작성 시 공백이 있어야함
					 "FROM student s LEFT JOIN department d ON s.departmentId = d.id";
		try (Connection connection = DB.getConnection("student1"); // Connection : DB에 연결하기 위한 객체
				PreparedStatement statement = connection.prepareStatement(sql); // PreparedStatement : SQL 명령을 실행하기 위한 객체
				ResultSet resultSet = statement.executeQuery()) { //executeQuery 메소드를 실행 -< DB에서 SQL 실행 -> 결과를 ResultSet 객체에 전달
			ArrayList<Student> list = new ArrayList<Student>();
			// DB의 Student테이블에서 조회한 데이터를 Student 객체에 채우고,
			// Student의 객체들을 ArrayList에 채워서 -> ArrayList 객체를 리턴한다.
			while (resultSet.next()) {
				Student student = new Student();
				student.setId(resultSet.getInt("id"));
				student.setStudentNumber(resultSet.getString("studentNumber"));
				student.setName(resultSet.getString("name"));
				student.setDepartmentId(resultSet.getInt("departmentId"));
				student.setYear(resultSet.getInt("year"));
				student.setDepartmentName(resultSet.getString("departmentName"));
				list.add(student);
			}
			return list;
		}
	}
}