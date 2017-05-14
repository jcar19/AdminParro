/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jccr.adminparro.dao;

import com.jccr.adminparro.pojo.Admin;

/**
 *
 * @author ASUS
 */
public interface AdminDao {
    public Admin listAdmin();
    public Admin findAdmin();
}
