package com.rangers.neteach.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
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
	public String testimonios(Model model) { 
		model.addAttribute("testimonios", repTestimonio.findAll());
		  return "testimonios"; 
	}
	
	@GetMapping("/tutores") 
	public String tutores(Model model) { 
		model.addAttribute("usuarios", repUsuario.findAll());
		  return "tutores"; 
	}
	
	
	/* FILTROS DE BUSQUEDA */
	@GetMapping("buscarNombre")
	public String buscarNombre(Model model) {
		model.addAttribute("usuarios", repUsuario.findAllByOrderByNombreAsc());

		return "tutores";
	}
	
	@GetMapping("buscarApellido")
	public String buscarApellido(Model model) {
		model.addAttribute("usuarios", repUsuario.findAllByOrderByApellidoAsc());

		return "tutores";
	}
	
	@GetMapping("ordenarArea")
	public String ordenarArea(Model model) {
		model.addAttribute("usuarios", repUsuario.findAllByOrderByMateriaAsc());

		return "tutores";
	}
	
	@PostMapping("buscarSexo")
	public String buscarSexo(String sexo, Model model) {
		model.addAttribute("usuarios", repUsuario.findBySexo(sexo));

		return "tutores";
	}
	
	@GetMapping("buscarEdad")
	public String buscarEdad( Model model) {
		model.addAttribute("usuarios", repUsuario.findAllByOrderByEdadAsc());

		return "tutores";
	}
	
	@PostMapping("buscarArea")
	public String buscarR(String materia, Model model) 
	{
		model.addAttribute("usuarios", repUsuario.findByMateria(materia));
		
		return "tutores";
	}
	
	/*Metodo agregar usuarios*/
	
	@PostMapping("agregarTutor")
	public String agregarTutor(@Valid @ModelAttribute("usuario") Usuario u, BindingResult rs, Model model) {
		if (rs.hasErrors()) {
			return "registro";
		} else {
			repUsuario.save(u);
			model.addAttribute("usuarios", u);
			model.addAttribute("usuarios", repUsuario.findAll());
			return "tutores";
		}
	}
	
	@PostMapping("agregarTestimonio")
	public String agregarTestimonio(@Valid @ModelAttribute("testimonio") Testimonio t, BindingResult rs, Model model) {
		if (rs.hasErrors()) {
			return "testimonios";
		} else {
			repTestimonio.save(t);
			model.addAttribute("testimonios", t);
			model.addAttribute("testimonios", repTestimonio.findAll());
			return "testimonios";
		}
	}

}
