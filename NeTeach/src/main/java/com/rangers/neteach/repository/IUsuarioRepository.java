package com.rangers.neteach.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rangers.neteach.modelo.Usuario;

public interface IUsuarioRepository extends JpaRepository<Usuario, Integer> {
	 List<Usuario> findByNombre (String nombre);
	 List<Usuario> findByApellido (String apellido);
	 List<Usuario> findByMateria (String materia);
	 List<Usuario> findBySexo (String sexo);
	 List<Usuario> findByEdad (int edad);
	 

}
