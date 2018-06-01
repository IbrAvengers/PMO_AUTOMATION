package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "employee_details")
public class EmployeeDetailsEntity {

	@Id
	private String emp_id;
	@Column
	private int enabled;
	@Column
	private String first_name;
	@Column
	private String last_name;
	@Column
	private String ibm_mail_id;
	@Column
	private String ph_number;
	@Column
	private String password;

	public String getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getIbm_mail_id() {
		return ibm_mail_id;
	}

	public void setIbm_mail_id(String ibm_mail_id) {
		this.ibm_mail_id = ibm_mail_id;
	}

	public String getPh_number() {
		return ph_number;
	}

	public void setPh_number(String ph_number) {
		this.ph_number = ph_number;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String toString() {
		return "Emp ID : " + this.getEmp_id() + " First Name : " + this.getFirst_name() + " Last Name : "+ this.getLast_name();
	}
}
