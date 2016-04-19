package model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ModelExmp
{
	
	@Id 
	private String id;
	
	private String name;
	private String price;
	private String condition;
	private String description;
	
	public ModelExmp()
	{
		super();
	}
	
	public ModelExmp(String id,String name, String price, String condition, String description) {
		super();
		this.id = id;
		this.name = name;
		
		this.price = price;
		this.condition = condition;
		this.description = description;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
}
