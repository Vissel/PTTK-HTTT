package model;

public class MapCourse {
	private int mapCourseID;
	private int courseID;
	private int userID;
	private int trainerID;
	public MapCourse(int courseID, int userID, int trainerID) {
		super();
		this.courseID = courseID;
		this.userID = userID;
		this.trainerID = trainerID;
	}
	public MapCourse() {}
	public int getMapCourseID() {
		return mapCourseID;
	}
	public void setMapCourseID(int mapCourseID) {
		this.mapCourseID = mapCourseID;
	}
	public int getCourseID() {
		return courseID;
	}
	public void setCourseID(int courseID) {
		this.courseID = courseID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public int getTrainerID() {
		return trainerID;
	}
	public void setTrainerID(int trainerID) {
		this.trainerID = trainerID;
	}
	
}
