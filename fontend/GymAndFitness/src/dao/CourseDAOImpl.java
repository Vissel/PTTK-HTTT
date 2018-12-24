package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Course;

public class CourseDAOImpl implements CourseDAO{
	private static Connection connection;
	
	public static void main(String[] args) {
		CourseDAOImpl dao = new CourseDAOImpl();
		List<Course> l = dao.listCourse();
		for(Course c : l) System.out.println(c.toString());
	}

	@Override
	public List<Course> listCourse() {
		List<Course> listCourse = new ArrayList<Course>();
		Course course ;
		connection = ConnectDB.getConnection();
		
		String sql = "SELECT c.COURSE_ID, c.COURSE_CODE, c.COURSE_NAME, c.COURSE_DESCRIPTION,c.START_DATE,c.END_DATE,u.USERS_NAME\r\n" + 
				"FROM (COURSE c LEFT JOIN MAP_COURSE m ON c.COURSE_ID = m.COURSE_ID) LEFT JOIN USERS u ON m.TRAINER_ID = u.USERS_ID\r\n";
		try {
			PreparedStatement prepared = connection.prepareStatement(sql);
			ResultSet rs = prepared.executeQuery();
			while(rs.next()) {
				course = new Course();
				course.setCourseID(rs.getInt(1));
				course.setCourseCode(rs.getString(2));
				course.setCourseName(rs.getString(3));
				course.setDescription(rs.getString(4));
				course.setStartDate(rs.getDate(5));
				course.setEndDate(rs.getDate(6));
				course.setTrainerName(rs.getString(7));
				listCourse.add(course);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listCourse;
	}
	
}
