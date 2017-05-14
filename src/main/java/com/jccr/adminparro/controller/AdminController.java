/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jccr.adminparro.controller;

import com.jccr.adminparro.exceptions.ResourceNotFoundException;
import com.jccr.adminparro.pojo.Admin;
import com.jccr.adminparro.pojo.Usuarios;
import com.jccr.adminparro.service.AdminService;
import com.jccr.adminparro.service.UsuarioService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 *
 * @author ASUS
 */
@Controller
@RequestMapping("/zonaadmin")
public class AdminController {
    
//    @Autowired
//    private AdminService adminService;
    
    private AdminService adminService;
    private UsuarioService usuarioService;
    
    @Autowired
    @Qualifier(value = "adminService")
    public void setAdminService(AdminService adminService) {
        this.adminService = adminService;
    }
    
    @Autowired
    @Qualifier(value = "usuarioService")
    public void setUsuarioService(UsuarioService usuarioService) {
        this.usuarioService = usuarioService;
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String aAdmin(Model model){
        Admin admin = adminService.dameAdmin();
        List<Usuarios> usuarios = usuarioService.dameTodos();
        Usuarios usuario = new Usuarios();
        model.addAttribute("admin", admin);
        model.addAttribute("usuarios", usuarios);
        model.addAttribute("usuario", usuario);
        return "zonaadmin";
    }
    
    @RequestMapping(value = "/save")
    public String guardarUsuario(@ModelAttribute("usuario") Usuarios userForm, Model model){
        usuarioService.guardaUsuario(userForm);
        return "redirect:/zonaadmin.htm";
    }
    
    @RequestMapping(value = "/{idAd}/delete")
    public String borrarUsuario(@PathVariable("idAd") int id){
        System.out.println("Metodo eliminar usuario");
        System.out.println("com.jccr.adminparro.controller.AdminController.borrarUsuario() Id:"+id);
        Usuarios user = usuarioService.daUsuarioPorId(id);
        usuarioService.borraUsuario(user);
        return "redirect:/zonaadmin.htm";
    }
    
//    @RequestMapping(value = "/update", method = RequestMethod.POST)
//    @ResponseBody
//    public void actualizarUsuario(@RequestParam int id, @RequestParam String nombre,
//            @RequestParam String passw, @RequestParam String descrip){
//        Map<String,Object> map = new HashMap<>();
//        List<Usuarios> usuarios;
//        Usuarios usuario = usuarioService.daUsuarioPorId(id);
//        System.out.println("Metodo actualizar usuario");
//        usuario.setNombre(nombre);
//        usuario.setPassw(passw);
//        usuario.setDescripcion(descrip);
//        usuarioService.actualizaUsuario(usuario);
//        map.put("1", "Actualizado");
//        //return map;
//    }
    
    @RequestMapping(value = "/update", method = RequestMethod.POST, consumes = "application/json")
    @ResponseBody
    public String actualizarUsuario(@RequestBody Usuarios usuarioUp){ //@RequestBody Usuarios usuario
        System.out.println("Metodo Actualizar");
        Usuarios usuario = usuarioService.daUsuarioPorId(usuarioUp.getIdUsuarios());
        usuario.setNombre(usuarioUp.getNombre());
        usuario.setPassw(usuarioUp.getPassw());
        usuario.setDescripcion(usuarioUp.getDescripcion());
        usuarioService.actualizaUsuario(usuario);
        return "{\"msg\":\"success\"}";
    }
    
    @ExceptionHandler(ResourceNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public String handleResourceNotFoundException() {
        return "notfound.htm";
    }
}
