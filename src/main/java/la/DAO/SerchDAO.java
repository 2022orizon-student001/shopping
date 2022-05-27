package la.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import la.bean.ItemBean;

public class SerchDAO  {

private String url = "jdbc:postgresql:sample";
private String user = "student";
private String pass = "himitu";

public  SerchDAO() throws DAOException {
	 try {
		 Class.forName("org.postgresql.Driver");
	 }catch
	 (ClassNotFoundException e) {
			e.printStackTrace();
			throw new DAOException("JDBC ドライバの登録に失敗しました。");
	 }

}
public List<ItemBean> findByName(String searchName) throws DAOException{
	
			String sql = "SELECT * FROM item WHERE name LIKE ?";
			
			try(	Connection con = DriverManager.getConnection(url, user, pass);
					PreparedStatement st = con.prepareStatement(sql);){			
				st.setString(1, "%"+ searchName +"%");
				try(ResultSet rs = st.executeQuery();) {
					List<ItemBean> list = new ArrayList<ItemBean>();
					while (rs.next()) {
						int code = rs.getInt("code");
						String name = rs.getString("name");
						int price = rs.getInt("price");
						ItemBean bean = new ItemBean(code,name, price);
						list.add(bean);
						
					}
					return list;
				} catch (SQLException e) {
					e.printStackTrace();
					throw new DAOException("レコードの取得に失敗しました。");
				}
			}catch(SQLException e) {
				e.printStackTrace();
				throw new DAOException("aレコードの取得に失敗しました。");
			}
		// TODO 自動生成されたコンストラクター・スタブ
	}

}
