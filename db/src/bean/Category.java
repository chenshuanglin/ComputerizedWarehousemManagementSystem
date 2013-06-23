package bean;

// Generated 2013-6-8 23:00:05 by Hibernate Tools 3.4.0.CR1

/**
 * Category generated by hbm2java
 */
public class Category implements java.io.Serializable {

	private Integer id;
	private String categoryName;
	private String tlevel;
	private String parentcategory;
	private String status;

	public Category() {
	}

	public Category(String categoryName, String tlevel, String parentcategory,
			String status) {
		this.categoryName = categoryName;
		this.tlevel = tlevel;
		this.parentcategory = parentcategory;
		this.status = status;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCategoryName() {
		return this.categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getTlevel() {
		return this.tlevel;
	}

	public void setTlevel(String tlevel) {
		this.tlevel = tlevel;
	}

	public String getParentcategory() {
		return this.parentcategory;
	}

	public void setParentcategory(String parentcategory) {
		this.parentcategory = parentcategory;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
