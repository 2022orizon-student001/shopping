package la.bean;

import java.io.Serializable;

public class CategoryBean implements Serializable {
	private int code;
	private String name;

	public CategoryBean() {
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

	public CategoryBean(int code, String name) {
		super();
		this.code = code;
		this.name = name;
	}

}
