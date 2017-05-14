/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jccr.adminparro.dao;

import com.jccr.adminparro.pojo.Admin;
import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author ASUS
 */
@Transactional
@Repository
public class AdminDaoImpl implements AdminDao{

    

    @Autowired
    @Resource(name="sessionFactory")
    private SessionFactory sessionFactory;
    
    public Session getSession(){
        return sessionFactory.getCurrentSession();
    }
    
    @Override
    public Admin listAdmin() {
        Query query = getSession().createQuery("from Admin");
        return (Admin) query.list().get(0);
    }

    @Override
    public Admin findAdmin() {
        return (Admin) getSession().createQuery("from Admin Where CAdmin=1").uniqueResult();
    }
    
}
