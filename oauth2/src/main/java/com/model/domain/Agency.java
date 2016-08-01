package com.model.domain;

import java.io.Serializable;

public class Agency implements Serializable
{

	private int agid;

	private String address;

	private String city;

	private String country;

	private String email;

	private String gst;

	private String iata;

	private String name;

	private String qst;

	private String region;

	private String repName;

	private String tel;

	private String zip;

	public Agency() {
	}

	public int getAgid() {
		return this.agid;
	}

	public void setAgid(int agid) {
		this.agid = agid;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGst() {
		return this.gst;
	}

	public void setGst(String gst) {
		this.gst = gst;
	}

	public String getIata() {
		return this.iata;
	}

	public void setIata(String iata) {
		this.iata = iata;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getQst() {
		return this.qst;
	}

	public void setQst(String qst) {
		this.qst = qst;
	}

	public String getRegion() {
		return this.region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getRepName() {
		return this.repName;
	}

	public void setRepName(String repName) {
		this.repName = repName;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getZip() {
		return this.zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

}
