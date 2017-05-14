/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jccr.adminparro.service;

import com.jccr.adminparro.dao.UsuariosDao;
import com.jccr.adminparro.pojo.Usuarios;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ASUS
 */

@Service
public class UsuarioService {
    @Autowired
    private UsuariosDao usuariosDao;
    
    public List<Usuarios> dameTodos(){
        return usuariosDao.daTodosUsuarios();
    }
    
    public void guardaUsuario(Usuarios usuario){        
        usuario.setIdUsuarios(usuariosDao.daMayorId()+1);
        usuariosDao.guardarUser(usuario);
    }
    
    public void borraUsuario(Usuarios usuario){
        usuariosDao.borrarUser(usuario);
    }
    
    public Usuarios daUsuarioPorId(int id){
        return usuariosDao.dameUsuarioPorId(id);
    }
    
    public void actualizaUsuario(Usuarios usuario){
        usuariosDao.actalizaUsuario(usuario);
    }
}
