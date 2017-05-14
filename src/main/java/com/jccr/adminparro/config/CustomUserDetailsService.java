/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jccr.adminparro.config;

import com.jccr.adminparro.dao.AdminDao;
import com.jccr.adminparro.pojo.Admin;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 *
 * @author ASUS
 */
@Service("customUserDetailsService")
public class CustomUserDetailsService implements UserDetailsService{

    @Autowired
    private AdminDao adminDao;
    
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        List<GrantedAuthority> authorities = new ArrayList<>();
        Admin admin = adminDao.findAdmin();
        if (admin != null) {
            authorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
            User user = new User(admin.getUsuario(), admin.getPassw(), authorities);
            return user;
        }else{
            throw new UsernameNotFoundException("Usuario no encontrado");
        }        
    }
    
}
