package la.bean;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import la.DAO.DAOException;
public class CustomerBean implements Serializable {

		private int code;
		private String name;
		private String address;
		private String email;
		private String tel;
		private String password;
		private static String url = "jdbc:postgresql:sample";
		private static String user = "student";
		private static String pass = "himitu";
		
	public CustomerBean ( String name, String address, String tel, String email){
		this.name=name;
		//this.code=code;
		this.address=address;
		this.tel= tel;
		this.email=email;
	
	}
		// TODO 自動生成されたコンストラクター・スタブ
	public CustomerBean() {
		
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	 public String getPassword() {
		return password;
	}
	public static CustomerBean logIn(String name,String password) throws DAOException {

		 String sql = "SELECT * FROM customer where name =? and password =?";
		 
		 try { Class.forName("org.postgresql.Driver");}
			catch(ClassNotFoundException e) {
				e.printStackTrace();
			}
		 try (
				
		 		Connection con = DriverManager.getConnection(url, user, pass);
		 		PreparedStatement st = con.prepareStatement(sql);){
				st.setString(1, name);
				st.setString(2, password);
		 		ResultSet rs = st.executeQuery();
		 	// List<CustomerBean> list = new ArrayList<CustomerBean>();
		 		rs.next();
		 		int code = rs.getInt("code");
		 		name = rs.getString("name");
		 		String address = rs.getString("address");
		 		String tel= rs.getString("tel");
		 		String email = rs.getString("email");
		 		CustomerBean bean = new CustomerBean(name, address, tel, email);
		 		// list.add(bean);
		 		
		 		
		 		
		 		return bean;
		 		}
		 		 catch (SQLException e) {
		 	e.printStackTrace();
		 	throw new DAOException("レコード取得に失敗しました。");
		 		 }}
		 		 

	public void registraion(String name, String address, String tel, String email, String password)throws DAOException{
		/*int customerNumber = 0;
		String sql="select nextval('customer_code_seq')";
		try (
		 		Connection con = DriverManager.getConnection(url, user, pass);
		 		PreparedStatement st = con.prepareStatement(sql);){
			ResultSet rs = st.executeQuery(); 
				if (rs.next()) 
				customerNumber = rs.getInt(20);
		}catch (SQLException e) {
		 	e.printStackTrace();
		 	throw new DAOException("レコード取得に失敗しました。");
				}
			*/
		
		String sql = "insert into customer(name,address,tel,email,password) values(?,?,?,?,?)";
		 try { Class.forName("org.postgresql.Driver");}
			catch(ClassNotFoundException e) {
				e.printStackTrace();
			}
		try (
				 
			 		Connection con = DriverManager.getConnection(url, user, pass);
				 PreparedStatement st = con.prepareStatement(sql);){
			 	//	st2.setInt(1, customerNumber);
			 		st.setString(1, name);
					st.setString(2, address);
					st.setString(3, tel);
					st.setString(4, email);
					st.setString(5, password);
					
			 		int rows = st.executeUpdate();
			 			
			}catch (SQLException e) {
	 	e.printStackTrace();
	 	throw new DAOException("レコード取得に失敗しました。");
			}}}