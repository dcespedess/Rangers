package com.rangers.neteach.modelo;

public class Testimonio {
  private int id;
  private String nombretes;
  private int edadtes;
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
