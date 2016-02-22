/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.informatica2016.sbpps.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author CARLOS
 */
@Controller
@RequestMapping({"/mantenimiento/contratos", "/proceso/contrato"})
public class ContratoController {

    public static final String PREFIX1 = "mantenimiento/contratos/";
    public static final String PREFIX2 = "proceso/contrato/";
    //@Autowired
    //private PersonaService personaService;

    @RequestMapping(value = "/index.html", method = RequestMethod.GET)
    public ModelAndView index( //            @RequestParam(value = "page", defaultValue = "1") Integer page,
            //            @RequestParam(value = "size", defaultValue = "2") Integer size,
            //            @RequestParam(value = "search", defaultValue = "") String search
            ) {

        ModelAndView mv = new ModelAndView(PREFIX1 + "index");
//        Paginado paginado = personaService.getPaginationList(page, size, search);
//        mv.addObject("paginado", paginado);
        return mv;
    }

    @RequestMapping(value = "/nuevo.html", method = RequestMethod.GET)
    public ModelAndView New() {
        ModelAndView mv = new ModelAndView(PREFIX2 + "nuevo");
        return mv;
    }

//    @RequestMapping(value = "/obtener/{dni}.json", method = RequestMethod.GET)
//    @ResponseBody
//    public PersonaDTO obtener(@PathVariable("dni") String dni) {
//        return new PersonaDTO(personaService.get(dni));
//    }
}
