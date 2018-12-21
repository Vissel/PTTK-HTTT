package dao;

import java.util.ArrayList;
import java.util.List;

import model.Users;

public interface UserDAO {
	public ArrayList<Users> getAllUser();
	public Users getOneUser(String userID);
	public void addUser(Users user);
	public void updateUser(Users user, int userID);
	public void deleteUser(int userID);
	public List<Users> filterUser(String typeUser);
}
