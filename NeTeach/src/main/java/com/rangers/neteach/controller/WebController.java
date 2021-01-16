package com.rangers.neteach.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.rangers.neteach.modelo.Testimonio;
import com.rangers.neteach.modelo.Usuario;
import com.rangers.neteach.repository.ITestimonioRepository;
import com.rangers.neteach.repository.IUsuarioRepository;


/*sdasdas*/
@Controller
public class WebController {
	
	@ModelAttribute
	private Usuario usuario() {
		return new Usuario();
	}
	
	@ModelAttribute
	private Testimonio testimonio() {
		return new Testimonio();
	}
	
	@Autowired
	public IUsuarioRepository repUsuario;
	
	@Autowired
	public ITestimonioRepository repTestimonio;
	
	
	
	@GetMapping("/")
	public String home() {
		return "index";
	}

		
	@GetMapping("/registro") 
	public String registro() { 
		  return "registro"; 
	}
	
	@GetMapping("/testimonios") 
	public String testimonios() { 
		  return "testimonios"; 
	}
	
	@GetMapping("/tutores") 
	public String tutores() { 
		  return "tutores"; 
	}
	
	
	/* FILTROS DE BUSQUEDA */
	@PostMapping("buscarNombre")
	public String buscarNombre(String nombre, ModelMap model) {
		model.put("usuarios", repUsuario.findByNombre(nombre));

		return "tutores";
	}
	
	@PostMapping("buscarApellido")
	public String buscarApellido(String apellido, ModelMap model) {
		model.put("usuarios", repUsuario.findByApellido(apellido));

		return "tutores";
	}
	
	@PostMapping("buscarArea")
	public String buscarArea(String materia, ModelMap model) {
		model.put("usuarios", repUsuario.findByMateria(materia));

		return "tutores";
	}
	
	@PostMapping("buscarSexo")
	public String buscarSexo(String sexo, ModelMap model) {
		model.put("usuarios", repUsuario.findBySexo(sexo));

		return "tutores";
	}
	
	@PostMapping("buscarEdad")
	public String buscarNombre(int edad, ModelMap model) {
		model.put("usuarios", repUsuario.findByEdad(edad));

		return "tutores";
	}
	
	

}
