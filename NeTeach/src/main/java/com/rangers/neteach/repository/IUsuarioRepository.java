package com.rangers.neteach.repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.rangers.neteach.modelo.Usuario;

public interface IUsuarioRepository extends JpaRepository<Usuario, Integer> {

}
