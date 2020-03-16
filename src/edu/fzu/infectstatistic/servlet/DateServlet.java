package edu.fzu.infectstatistic.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.fzu.infectstatistic.dao.ProvinceDAO;
import edu.fzu.infectstatistic.dao.ProvinceDAOImpl;
import edu.fzu.infectstatistic.pojo.Province;

@WebServlet("/dateServlet")
public class DateServlet extends HttpServlet {
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		 String dateString = request.getParameter("date");
		 Date date = Date.valueOf(dateString);
		 if (date!=null) {
			 ProvinceDAO dao = new ProvinceDAOImpl();
			 Province data = dao.getNationDataByDate(date);
			 //request.setAttribute("newData", data);
			 //request.setAttribute("date", date);			 
			 //request.getRequestDispatcher("/home.jsp").forward(request,response);
			 response.sendRedirect(request.getContextPath() + "/home.jsp?date="+date);
		 }
		 else {
			System.out.println("日期数据错误！");
		}
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
