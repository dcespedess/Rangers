package com.rangers.neteach.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

@Entity
public class Usuario {
	@Id
	@GeneratedValue(strategy= GenerationType.AUTO)
	private int id;
	
	@Column(length = 100)
	
	private String nombre;
	
	@Column(length = 100)
	private String apellido;
	
	@Column(length = 100)
	private String materia;
	
	@Min(18)
	@Max(99)
	private int edad;
	
	@Column(length = 150)
	private String correo;
	
	@Column(nullable = false )
	private int celular;
	
	private String sexo;
	
	@Column (length = 200)
	@Size(max = 200, message="Máximo de caractereses permitidos: 200")
	private String descUsuario;

	public Usuario() {
		super();
	}

	public Usuario(int id, String nombre, String apellido, String materia, @Min(18) @Max(99) int edad, String correo,
			int celular, String sexo, String descUsuario) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.materia = materia;
		this.edad = edad;
		this.correo = correo;
		this.celular = celular;
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

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public int getCelular() {
		return celular;
	}

	public void setCelular(int celular) {
		this.celular = celular;
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
				+ ", edad=" + edad + ", correo=" + correo + ", celular=" + celular + ", sexo=" + sexo + ", descUsuario="
				+ descUsuario + "]";
	}


	
	

}
