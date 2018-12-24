package model;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.StringTokenizer;

public class Course {
	private int courseID;
	private String courseCode;
	private String courseName;
	private String description;
	private Date startDate;
	private Date endDate;
	private String trainerCode;
	private String trainerName;
	private String userCode;
	private String userName;
	private int status;
	
	public Course() {}

	public int getCourseID() {
		return courseID;
	}
	public void setCourseID(int courseID) {
		this.courseID = courseID;
	}
	public String getCourseCode() {
		return courseCode;
	}
	public void setCourseCode(String courseCode) {
		this.courseCode = courseCode;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	public String getTrainerCode() {
		return trainerCode;
	}
	public void setTrainerCode(String trainerCode) {
		this.trainerCode = trainerCode;
	}
	public String getTrainerName() {
		return trainerName;
	}
	public void setTrainerName(String trainerName) {
		this.trainerName = trainerName;
	}
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	@Override
	public String toString() {
		return "Course [courseID=" + courseID + ", courseCode=" + courseCode + ", courseName=" + courseName
				+ ", description=" + description + ", startDate=" + startDate + ", endDate=" + endDate
				+ ", trainerCode=" + trainerCode + ", trainerName=" + trainerName + ", userCode=" + userCode
				+ ", userName=" + userName + ", status=" + status + "]";
	}
	
	public static void main(String[] args) {
	}
}
