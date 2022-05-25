package la.bean;

import java.io.Serializable;

public class ItemBean implements Serializable {
	private int code;
	private String name;
	private int price;
	private int quantity;

	public ItemBean() {
		// TODO 自動生成されたコンストラクター・スタブ
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public ItemBean(int code, String name, int price, int quantity) {
		super();
		this.code = code;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
	}

}
