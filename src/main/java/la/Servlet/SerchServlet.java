package la.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import la.DAO.DAOException;
import la.DAO.SerchDAO;
import la.bean.ItemBean;

/**
 * Servlet implementation class SerchServlet
 */
@WebServlet("/SerchServlet")
public class SerchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SerchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
			String action = request.getParameter("action");
			
			if (action == null || action.length() == 0 || action.equals("top")) {
				gotoPage(request, response, "/top.jsp");
			} else if (action.equals("serch")) {
				String searchName = request.getParameter("serch");
				SerchDAO dao = new SerchDAO();
				List<ItemBean> list = dao.findByName(searchName);
				request.setAttribute("items",list);
				gotoPage(request, response, "/list.jsp");
			} else {
				request.setAttribute("message", "正しく操作してください。");
				gotoPage(request, response, "/errInternal.jsp");
			}
			
		} catch (DAOException e) {
			e.printStackTrace();
			request.setAttribute("message","内部エラーが発生しました。");
			gotoPage(request, response, "/errInternal.jsp");
		}
		
	}
	private void gotoPage(HttpServletRequest request,
			HttpServletResponse response, String page) throws ServletException,
	IOException {
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
