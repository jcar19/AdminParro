/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jccr.adminparro.dao;

import com.jccr.adminparro.pojo.Usuarios;
import java.util.List;

/**
 *
 * @author ASUS
 */
public interface UsuariosDao {
    public List<Usuarios> daTodosUsuarios();
    public void guardarUser(Usuarios usuario);
    public void borrarUser(Usuarios usuario);
    public Usuarios dameUsuarioPorId(int id);
    public int daMayorId();
    public void actalizaUsuario(Usuarios usuario);
}
