package com.rangers.neteach.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

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
    public String inicio() { 
        return "index"; 
    }	

	@GetMapping("/index") 
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
	
	@GetMapping("/error") 
	public String error() { 
		  return "error"; 
	}

}
