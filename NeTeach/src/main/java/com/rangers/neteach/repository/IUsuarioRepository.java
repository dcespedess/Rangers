package com.rangers.neteach.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rangers.neteach.modelo.Usuario;

public interface IUsuarioRepository extends JpaRepository<Usuario, Integer> {
	 List<Usuario> findAllByOrderByNombreAsc ();
	 List<Usuario> findAllByOrderByApellidoAsc ();
	 List<Usuario> findAllByOrderByMateriaAsc ();
	 List<Usuario> findAllByOrderBySexoAsc ();
	 List<Usuario> findAllByOrderByEdadAsc ();
	 List<Usuario> findByMateria(String materia);
	 List<Usuario> findBySexo(String sexo);
	 

}
