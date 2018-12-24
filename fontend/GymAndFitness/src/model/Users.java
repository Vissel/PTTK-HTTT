package model;

import java.sql.Date;

public class Users {
	private int userID;
	private String userCode;
	private String name;
	private int roleID;
	private int sex;
	private Date dob;
	private String phone;
	private String city;
	private String town;
	private String address;
	private String email;
	private String bankAccount;
	private String bankName;
	private String description;
	private int scheduleID;
	private int status;
	
	
	public Users(String userCode, String name, int roleID, int sex, Date dob, String phone, String city, String town,
			String address, String email, String bankAccount, String bankName, String description) {
		super();
		this.userCode = userCode;
		this.name = name;
		this.roleID = roleID;
		this.sex = sex;
		this.dob = dob;
		this.phone = phone;
		this.city = city;
		this.town = town;
		this.address = address;
		this.email = email;
		this.bankAccount = bankAccount;
		this.bankName = bankName;
		this.description = description;
	}
	public Users() {}
	
	public int getUserID() {
		return userID;
	}

	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getTown() {
		return town;
	}
	public void setTown(String town) {
		this.town = town;
	}
	public void setUserID(int iD) {
		userID = iD;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getRoleID() {
		return roleID;
	}

	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date bob) {
		this.dob = bob;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBankAccount() {
		return bankAccount;
	}

	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	public int getScheduleID() {
		return scheduleID;
	}

	public void setScheduleID(int scheduleID) {
		this.scheduleID = scheduleID;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Users [userCode=" + userCode + ", name=" + name + ", roleID=" + roleID + ", sex=" + sex + ", bob=" + dob
				+ ", phone=" + phone + ", address=" + address + ", bankAccount=" + bankAccount + ", bankName="
				+ bankName + ", description=" + description + ", scheduleID=" + scheduleID
				+ ", status=" + status + "]";
	}
	
	
}
