/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.aplicacao;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author aluno
 */

    @Controller
public class AdminController {

    @RequestMapping("/admin")
    public String loginPage() {
        // O retorno "login" fará o Spring buscar WEB-INF/views/login.jsp
        return "admin";
    }
}

