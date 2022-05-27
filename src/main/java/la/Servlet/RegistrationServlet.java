package la.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import la.DAO.DAOException;
import la.bean.CustomerBean;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(false);
		try {
			String action = request.getParameter("action");
			if (action==null||action.length()==0 || action.equals("input_customer")) {
			
			gotoPage(request, response, "/customerInfo.jsp");	
			}
			else if (action.equals("login")) {
				String name =request.getParameter("name");
				String password = request.getParameter("password");
				// CustomerDAO dao = new CustomerDAO();
				// List<CustomerBean =dao.logIn(name, password);
				CustomerBean bean = new CustomerBean();
				 bean = CustomerBean.logIn(name, password);
				 session.setAttribute("customer",bean);
				 /*RequestDispatcher rd = request.getRequestDispatcher("/OrderServlet");
				 rd.forward(request, response);*/
				 gotoPage(request,response,"/top.jsp");
				
					
			}
			else if (action.equals("registration")) {
				CustomerBean bean = new CustomerBean();
				bean.setName(request.getParameter("name"));
				bean.setAddress(request.getParameter("address"));
				bean.setTel(request.getParameter("tel"));
				bean.setEmail(request.getParameter("email"));
				bean.setPassword(request.getParameter("password"));
				String name = request.getParameter("name");
				String address = request.getParameter("address");
				String tel = request.getParameter("tel");
				String email = request.getParameter("email");
				String password = request.getParameter("password");
				bean.registraion(name, address , tel, email, password);
				// session.setAttribute("customer", bean);	
				/*RequestDispatcher rd = request.getRequestDispatcher("/OrderServlet");
				rd.forward(request, response);*/
				gotoPage(request,response,"/top.jsp");
			
			
			}}catch(DAOException e) {
				e.printStackTrace();
				request.setAttribute("message", "正しく操作してください。");
				gotoPage(request, response, "/errInternal.jsp");
			}
	}
		
	

			private void gotoPage(HttpServletRequest request, HttpServletResponse response, String page)throws ServletException, IOException {
				RequestDispatcher rd = request.getRequestDispatcher(page);
				rd.forward(request, response);
				}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
