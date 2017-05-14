/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jccr.adminparro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author ASUS
 */
@Controller
//@RequestMapping("/logeo.htm")
public class IndexController {
    
    @RequestMapping(value = "/logeo.htm", method = RequestMethod.GET)    
    public String alogeo(){
        return "logeo";
    }
    
    @RequestMapping(value = "/about.htm", method = RequestMethod.GET)    
    public String aAbout(){
        return "about";
    }
}
