package la.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


import la.bean.CartBean;
import la.bean.CustomerBean;
import la.bean.ItemBean;


@SuppressWarnings("unused")
public class OrderDAO {

	private String url = "jdbc:postgresql:sample";
	private String user = "student";
	private String pass = "himitu";
	
	public OrderDAO() throws DAOException {
		try {
			// JDBCドライバの登録
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			throw new DAOException("JDBCドライバの登録に失敗しました。");
		}
	}
	public int saveOrder(CustomerBean customer, CartBean cart)throws DAOExceotion{
		int customerNumber = 0;
		String sql="select nextval('customer_code_seq')";
		
		try (
				 Connection con = DriverManager.getConnection(url, user, pass);
				 PreparedStatement st = con.prepareStatement(sql);
				
				 ResultSet rs = st.executeQuery();) {
			if (rs.next()) {
					customerNumber = rs.getInt(1);
			}
		}
			catch (SQLException e) {
				e.printStackTrace();
				throw new DAOException("レコードの操作に失敗しました。");
		}
		
	
		sql ="insert into cutomer Values(?,?,?,?)";
		
		try (
				Connection con = DriverManager.getConnection(url, user, pass);
				 PreparedStatement st = con.prepareStatement(sql);){
				st.setInt(1, customerNumber);
				st.setString(2, customer.getName());
				st.setString(3, customer.getAddress());
				st.setString(4, customer.getTel());
				st.setString(5, customer.getEmail());
			
				st.executeUpdate();
				}
	}catch(SQLException e) {
					e.printStackTrace();
					throw new DAOException("レコードの操作に失敗しました。");
				}
	int orderNumber = 0;
	sql = "select nextval('ordered_code_seq')";
	
	try (
			 Connection con = DriverManager.getConnection(url, user, pass);
			 PreparedStatement st = con.prepareStatement(sql);
			
			 ResultSet rs = st.executeQuery();) {
		if (rs.next()) {
				orderNumber = rs.getInt(1);
		}
	}
		catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("レコードの操作に失敗しました。");
	}
	sql ="insert into ordered Values(?,?,?,?)";
	try (
			 Connection con = DriverManager.getConnection(url, user, pass);
			 PreparedStatement st = con.prepareStatement(sql);){
		st.setInt(1,  orderNumber);
		st.setInt(2,  customerNumber);
		Date today = new Date(System.currentTimeMillis());
		st.setDate(3, today);
		st.setInt(4, cart.getTotal());
		st.executeUpdate();}
		catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("レコードの操作に失敗しました。");
	}	
		sql = "insert into ordered_detail Values(?,?,?)";
		try (
				 Connection con = DriverManager.getConnection(url, user, pass);
				 PreparedStatement st = con.prepareStatement(sql);){
			List<ItemBean> items= cart.getItems();
			for (ItemBean item: items) {
				st.setInt(1, orderNumber);
				st.setInt(2, item.getcode);
				st.setInt(3, item.getQuantity());
				st.executeLargeUpdate();
				
			}
		return orderNumber;
		
	}catch (SQLException e) {
		e.printStackTrace();
		throw new DAOException("レコードの操作に失敗しました。");
	}
}
	

}
