package dao;

import java.util.List;

import model.City;
import model.CourseType;
import model.Role;
import model.Town;
import model.Users;

public interface ConfigureDAO {
	List<City> listCity();
	List<Town> listTown();
	String getCityTown(int cityID, int townID);
	
	List<Role> getAllRole();
	List<CourseType> getAllCourseType();
	
	List<Users> getAllTrainer();
}
