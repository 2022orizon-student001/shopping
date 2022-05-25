package la.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import la.bean.CartBean
import la.bean.CustomerBean;
import la.dao.OrderDAO;
import la.dao.DAOException;
/**
 * Servlet implementation class CartServlet
 */
@WebServlet(name = "OrderServlet", urlPatterns = { "/OrderServlet" })
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	request.setCharacterEncoding("UTF-8");
	HttpSession session = request.getSession(false);
	
	if(session == null ) {
		request.setAttribute("message", "セッションが切れています。もう一度トップページより操作してください。");
		gotoPage(request,response, "?errInternl.jsp");
		return;
	}
	CartBean cart =(CartBean)Session.getAttribute("cart");
	
	if (cart ==null) {request.setAttribute("message", "正しく操作してください。");
	gotoPage(request,response, "/errInternl.jsp");
	return;
		
	}
	
	try {
		String action = request.getParameter("action");
		if (action==null||action.length()==0 || action.equals("input_customer")) {
		gotoPage(response, request, "/customerInfo.jsp");	
		}
		else if (action.equals("confirm")){
			
		
			CustomerBean bean = new .CustomerBean();
			bean.setName(request.getParameter("name"));
			bean.setAddress(request.getParameter("Address"));
			bean.setTel(request.getParameter("Tel"));
			bean.setEmail(request.getParameter("Emai"));
			session.setAttribute("customer", bean);
			gotoPage(response, request, "/customerInfo.jsp");							
		}
		else if (action.equals("order")) {
			CustomerBean customer =(CustomerBean)session.getAttribute("customer");
			if (customer == null) {
				request.setAttribute("message", "正しく操作してください");
				gotoPage(request, response, "/errInternal.jsp");
				return;
				
			}
			OrderDAO order new OrderDAO();
			int orderNumber = order.saveOrder(customer, cart);
			session.removeAttribute("cart");
			session.removeAttribute("customer");
			request.setAttribute("orderNumber", Integer.valueOf(orderNumber));
			gotoPage(request, response,"/order.jsp");
		
		}
		else {
			request.setAttribute("message", "正しく操作してください。");
			gotoPage(request, response, "/errInternal.jsp");
		}
	}catch(DAOException e) {
		e.print
			request.setAttribute("message", "内部エラーが発生しました。");
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
