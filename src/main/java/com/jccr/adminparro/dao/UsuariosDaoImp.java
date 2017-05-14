/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jccr.adminparro.dao;

import com.jccr.adminparro.pojo.Usuarios;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Property;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author ASUS
 */
@Transactional
@Repository
public class UsuariosDaoImp implements UsuariosDao{

    @Autowired
    private SessionFactory sessionFactory;

    
    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }
    
        
    @Override
    public List<Usuarios> daTodosUsuarios() {
        return getSession().createQuery("from Usuarios order by idUsuarios desc").list();
    }

    @Override
    public void guardarUser(Usuarios usuario) {
        getSession().save(usuario);
    }
    
    @Override
    public int daMayorId(){
//        Criteria criterio = getSession().createCriteria(Usuarios.class, "user");
//        criterio.setProjection(Property.forName("user.idUsuarios").max());
//        return (int) criterio.uniqueResult();
        
        return (int) getSession().createQuery("select max(user.idUsuarios) from Usuarios user").uniqueResult();
    }

    @Override
    public void borrarUser(Usuarios usuario) {
        getSession().delete(usuario);
    }

    @Override
    public Usuarios dameUsuarioPorId(int id) {
        Criteria criterio = getSession().createCriteria(Usuarios.class);
        criterio.add(Restrictions.eq("idUsuarios", id));
        return (Usuarios) criterio.uniqueResult();
    }

    @Override
    public void actalizaUsuario(Usuarios usuario) {
        getSession().update(usuario);
    }
}
