package bean;

// Generated 2013-6-8 23:00:05 by Hibernate Tools 3.4.0.CR1

/**
 * Brand generated by hbm2java
 */
public class Brand implements java.io.Serializable {

	private Integer id;
	private String brandName;
	private String comments;

	public Brand() {
	}

	public Brand(String brandName) {
		this.brandName = brandName;
	}

	public Brand(String brandName, String comments) {
		this.brandName = brandName;
		this.comments = comments;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getBrandName() {
		return this.brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public String getComments() {
		return this.comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

}
