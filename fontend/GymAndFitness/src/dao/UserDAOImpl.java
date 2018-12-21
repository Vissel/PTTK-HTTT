package dao;

import java.security.KeyStore.ProtectionParameter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Users;

public class UserDAOImpl implements UserDAO {
	public static Connection connection;

	public UserDAOImpl() {
	}

	// test
	public static void main(String[] args) {
		UserDAOImpl test = new UserDAOImpl();
		///////// test get all user
//		List<Users> list = test.getAllUser();
//		if (!list.isEmpty())
//			for (Users u : list)
//				System.out.println(u.toString());
//		else
//			System.out.println("empty");
		///////// test get one user
//		Users u = test.getOneUser("1");
//		System.out.println(u.toString());
		///////// test update user
//		Users u = new Users("test", "test", 4, new Date(2000, 01, 01), "085496611", "test", "", "", "", 0, 0, 0, 1, "test");
//		test.updateUser(u, 23);
		///////// test delete
//		test.deleteUser(14);
		///////// test filter
		List<Users> list = test.filterUser("4");
		for(Users u : list) System.out.println(u.toString());
	}

	@Override
	public ArrayList<Users> getAllUser() {
		ArrayList<Users> listUser = null;
		connection = ConnectDB.getConnection();

		if (connection == null)
			System.out.println("connection error - -- - - -");
		else {

			if (listUser == null)
				listUser = new ArrayList<Users>();
			String sql = "SELECT * FROM USERS";

			try {
				PreparedStatement preparedStatement = connection.prepareStatement(sql);
				ResultSet rs = preparedStatement.executeQuery();
				while (rs.next()) { // note : column dau tien la ID, ko can lay. Lay tu column thu 2
					Users u = new Users();
					u.setUserID(rs.getInt(1));
					u.setUserCode(rs.getString(2));
					u.setName(rs.getString(3));
					u.setRoleID(rs.getInt(4));
					u.setBob(rs.getDate(5));
					u.setPhone(rs.getString(6));
					u.setAddress(rs.getString(7));
					u.setBankAccount(rs.getString(8));
					u.setBankName(rs.getString(9));
					u.setDescription(rs.getString(10));
					u.setCourseID(rs.getInt(11));
					u.setScheduleID(rs.getInt(12));
					u.setStatus(rs.getInt(13));
					u.setSex(rs.getInt(14));
					u.setEmail(rs.getString(15));
					listUser.add(u);
				}
				rs.close();
				preparedStatement.close();
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return listUser;
	}

	@Override
	public Users getOneUser(String userID) {
		Connection connection = ConnectDB.getConnection();
		Users u = new Users();
		String sql = "SELECT * FROM USERS WHERE USERS_ID = ?";
		try {
			PreparedStatement prepared = connection.prepareStatement(sql);
			prepared.setInt(1, Integer.parseInt(userID));
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				u.setUserID(rs.getInt(1));
				u.setUserCode(rs.getString(2));
				u.setName(rs.getString(3));
				u.setRoleID(rs.getInt(4));
				u.setBob(rs.getDate(5));
				u.setPhone(rs.getString(6));
				u.setAddress(rs.getString(7));
				u.setBankAccount(rs.getString(8));
				u.setBankName(rs.getString(9));
				u.setDescription(rs.getString(10));
				u.setSex(rs.getInt(14));
				u.setEmail(rs.getString(15));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return u;
	}

	@Override
	public void addUser(Users user) {
		connection = ConnectDB.getConnection();
		String sql = "INSERT INTO USERS(USERS_CODE,USERS_NAME,DATEOFBIR,PHONE,ADDRESS,BANK_ACCOUNT,BANK_NAME,USERS_DESCRIPTION,SEX,EMAIL,USERS_ROLE) "
				+ "VALUES(?,?,?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement prepared = connection.prepareStatement(sql);
			prepared.setString(1, user.getUserCode());
			prepared.setString(2, user.getName());
			prepared.setDate(3, user.getBob());
			prepared.setString(4, user.getPhone());
			prepared.setString(5, user.getAddress());
			prepared.setString(6, user.getBankAccount());
			prepared.setString(7, user.getBankName());
			prepared.setString(8, user.getDescription());
			prepared.setInt(9, user.getSex());
			prepared.setString(10, user.getEmail());
			prepared.setInt(11, user.getRoleID());

			prepared.executeUpdate();
			prepared.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public void updateUser(Users user, int userID) {
		connection = ConnectDB.getConnection();
		String sql = "UPDATE USERS\r\n" + 
				"SET USERS_CODE=?,USERS_NAME=?,DATEOFBIR=?,PHONE=?,ADDRESS=?,BANK_ACCOUNT=?,BANK_NAME=?,USERS_DESCRIPTION=?,SEX=?,EMAIL=?,USERS_ROLE=?\r\n" + 
				"WHERE USERS_ID = ?";
		try {
			PreparedStatement prepared = connection.prepareStatement(sql);
			prepared.setString(1, user.getUserCode());
			prepared.setString(2, user.getName());
			prepared.setDate(3, user.getBob());
			prepared.setString(4, user.getPhone());
			prepared.setString(5, user.getAddress());
			prepared.setString(6, user.getBankAccount());
			prepared.setString(7, user.getBankName());
			prepared.setString(8, user.getDescription());
			prepared.setInt(9, user.getSex());
			prepared.setString(10, user.getEmail());
			prepared.setInt(11, user.getRoleID());
			
			prepared.setInt(12, userID);
			
			prepared.executeUpdate();
			prepared.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void deleteUser(int userID) {
		connection = ConnectDB.getConnection();
		String sql = "DELETE FROM USERS WHERE USERS_ID = ?";
		try {
			PreparedStatement prepared = connection.prepareStatement(sql);
			prepared.setInt(1, userID);
			
			prepared.executeUpdate();
			prepared.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public List<Users> filterUser(String typeUser)  {
		connection = ConnectDB.getConnection();
		String sql = "SELECT * FROM USERS WHERE USERS_ROLE = ?";
		PreparedStatement prepared;
		List<Users> list = new ArrayList<>();
		try {
			prepared = connection.prepareStatement(sql);
			prepared.setString(1, typeUser);
			ResultSet rs = prepared.executeQuery();
			Users u ;
			while(rs.next()) {
				u = new Users();
				u.setUserID(rs.getInt(1));
				u.setUserCode(rs.getString(2));
				u.setName(rs.getString(3));
				u.setRoleID(rs.getInt(4));
				u.setBob(rs.getDate(5));
				u.setPhone(rs.getString(6));
				u.setAddress(rs.getString(7));
				u.setBankAccount(rs.getString(8));
				u.setBankName(rs.getString(9));
				u.setDescription(rs.getString(10));
				u.setCourseID(rs.getInt(11));
				u.setScheduleID(rs.getInt(12));
				u.setStatus(rs.getInt(13));
				u.setSex(rs.getInt(14));
				u.setEmail(rs.getString(15));
				list.add(u);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
	}

}
