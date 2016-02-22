/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.informatica2016.sbpps.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author CARLOS
 */
@Controller
public class HomeController {
    @RequestMapping(value = "/index.html", method = RequestMethod.GET)
    public String index(HttpServletRequest httpRequest) {

        HttpSession session = httpRequest.getSession();

        if (session.getAttribute("usuario") == null) {
            return "redirect:login.htm";
        }

        return "bienvenida";
    }
}
