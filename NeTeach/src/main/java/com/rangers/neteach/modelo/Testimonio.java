package com.rangers.neteach.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

@Entity
public class Testimonio {
	
@Id
@GeneratedValue(strategy= GenerationType.AUTO)
  private int id;
@Column
  private String nombretes;

@Min(18)
@Max(99)
  private int edadtes;

@Column (length = 100)
  private String desctes;
  
  public Testimonio(int id) {
	this.id = id;
  }
  
  public Testimonio(int id, String nombretes, int edadtes, String desctes) {
	this.id = id;
	this.nombretes = nombretes;
	this.edadtes = edadtes;
	this.desctes = desctes;
  }
  
  public int getId() {
	return id;
  }
  
  public void setId(int id) {
	this.id = id;
  }
  
  public String getNombretes() {
	return nombretes;
  }
  
  public void setNombretes(String nombretes) {
	this.nombretes = nombretes;
  }
  public int getEdadtes() {
	return edadtes;
  }
  
  public void setEdadtes(int edadtes) {
	this.edadtes = edadtes;
  }
  
  public String getDesctes() {
	return desctes;
  }
  public void setDesctes(String desctes) {
	this.desctes = desctes;
  }
  
  @Override
  public String toString() {
	return "Testimonio [id=" + id + ", nombretes=" + nombretes + ", edadtes=" + edadtes + ", desctes=" + desctes + "]";
  }
  
  
}
