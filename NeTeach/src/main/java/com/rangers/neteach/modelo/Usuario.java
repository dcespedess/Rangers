package com.rangers.neteach.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

@Entity
public class Usuario {
	@Id
	@GeneratedValue(strategy= GenerationType.AUTO)
	private int id;
	
	private String nombre;
	
	private String apellido;
	
	private String materia;
	
	@Min(18)
	@Max(99)
	private int edad;
	
	
	private String sexo;
	
	@Column (length = 100)
	private String descUsuario;

	public Usuario() {
		super();
	}

	public Usuario(int id, String nombre, String apellido, String materia, @Min(18) @Max(99) int edad, String sexo,
			String descUsuario) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.materia = materia;
		this.edad = edad;
		this.sexo = sexo;
		this.descUsuario = descUsuario;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getMateria() {
		return materia;
	}

	public void setMateria(String materia) {
		this.materia = materia;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getDescUsuario() {
		return descUsuario;
	}

	public void setDescUsuario(String descUsuario) {
		this.descUsuario = descUsuario;
	}

	@Override
	public String toString() {
		return "Usuario [id=" + id + ", nombre=" + nombre + ", apellido=" + apellido + ", materia=" + materia
				+ ", edad=" + edad + ", sexo=" + sexo + ", descUsuario=" + descUsuario + "]";
	}
	
	



	
	

}
