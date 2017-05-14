/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jccr.adminparro.service;

import com.jccr.adminparro.dao.AdminDao;
import com.jccr.adminparro.pojo.Admin;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ASUS
 */
@Service
public class AdminService {
    @Autowired
    private AdminDao adminDao;
    
    public Admin dameAdmin(){
        Admin admin = adminDao.listAdmin();
        admin.setPassw(cambiaAsteriscos(admin.getPassw()));
        return admin;
    }
    
    public String cambiaAsteriscos(String clave){
        ArrayList arrPass = new ArrayList();
        for(char c: clave.toCharArray()){
            arrPass.add("*");
        }
        return arrPass.toString();
    }
}
