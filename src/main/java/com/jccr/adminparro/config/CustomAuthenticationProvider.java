/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jccr.adminparro.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.User;

/**
 *
 * @author ASUS
 */
public class CustomAuthenticationProvider implements AuthenticationProvider{

    @Autowired
    private CustomUserDetailsService customUserDetailsService;
           
    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String principal = authentication.getName();
        String credenciales = (String) authentication.getCredentials();
        
        User user = (User) customUserDetailsService.loadUserByUsername(principal);
        
        if (user != null) {
            if(credenciales.equals(user.getPassword())){
                System.out.println("Login correcto");
                return new UsernamePasswordAuthenticationToken(principal, user.getPassword(), user.getAuthorities());
            }else{
                System.out.println("Error de Login "+principal);
                throw new BadCredentialsException("Error de login");
            }
            
        } else {
            System.out.println("Error de Login "+principal);
            throw new BadCredentialsException("Error de login");
        }
        
    }

    @Override
    public boolean supports(Class<?> type) {
        return true;
    }
    
}
