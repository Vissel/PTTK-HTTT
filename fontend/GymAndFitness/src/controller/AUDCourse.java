package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CourseDAOImpl;
import model.Course;

/**
 * Servlet implementation class AUDCourse
 */
@WebServlet("/AUDCourse")
public class AUDCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final CourseDAOImpl courseDAO = new CourseDAOImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AUDCourse() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String command = request.getParameter("command");
		String typeCourse = request.getParameter("typeCourse");
		String codeCourse = request.getParameter("codeCourse");
		String nameCourse = request.getParameter("nameCourse");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		String actor = request.getParameter("actor");
		String quantity = request.getParameter("quantity");
		String description = request.getParameter("description");
		String room = request.getParameter("room");
		String city = request.getParameter("city");
		String town = request.getParameter("town");
		String address = request.getParameter("address");
		String trainerCode = request.getParameter("trainerCode");
		String trainerName = request.getParameter("trainerName");
		String fee = request.getParameter("fee");
		
		String url = "";
		switch (command) {
		case "add":
			Course course = new Course();
			course.setCourseType(Integer.parseInt(typeCourse));
			course.setCourseCode(codeCourse);
			course.setCourseName(nameCourse);
			course.setStartDate(Date.valueOf(startDate));
			course.setEndDate(Date.valueOf(endDate));
			course.setActor(actor);
			course.setQuantity(Long.parseLong(quantity));
			course.setDescription(description);
			course.setAddress(room);
			course.setCity(city);
			course.setTown(town);
			course.setTrainerCode(trainerCode);
			course.setTrainerName(trainerName);
			course.transCodeToId(trainerCode); // translate code to id
			course.setFee(Float.parseFloat(fee));
			courseDAO.addCourse(course);
			url = "Backend/ManageCourse/listCourse.jsp?message=add";
			break;
		case "cancel":
			url = "Backend/ManageCourse/listCourse.jsp";
			break;
		default:
			url = "Backend/error.jsp";
			break;
		}
		response.sendRedirect(url);
	}

}
