package bean;

// Generated 2013-6-8 23:00:05 by Hibernate Tools 3.4.0.CR1

import java.util.Date;

/**
 * Goods generated by hbm2java
 */
public class Goods implements java.io.Serializable {

	private Integer id;
	private String productName;
	private String barcode;
	private String category;
	private String brand;
	private String specification;
	private String threshold;
	private String description;
	private Date createTime;
	private int status;

	public Goods() {
	}

	public Goods(String productName, String barcode, String category,
			String brand, int status) {
		this.productName = productName;
		this.barcode = barcode;
		this.category = category;
		this.brand = brand;
		this.status = status;
	}

	public Goods(String productName, String barcode, String category,
			String brand, String specification, String threshold,
			String description, Date createTime, int status) {
		this.productName = productName;
		this.barcode = barcode;
		this.category = category;
		this.brand = brand;
		this.specification = specification;
		this.threshold = threshold;
		this.description = description;
		this.createTime = createTime;
		this.status = status;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getBarcode() {
		return this.barcode;
	}

	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}

	public String getCategory() {
		return this.category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getBrand() {
		return this.brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getSpecification() {
		return this.specification;
	}

	public void setSpecification(String specification) {
		this.specification = specification;
	}

	public String getThreshold() {
		return this.threshold;
	}

	public void setThreshold(String threshold) {
		this.threshold = threshold;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public int getStatus() {
		return this.status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

}
