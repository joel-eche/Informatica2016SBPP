/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.informatica2016.sbpps.service;

import com.informatica2016.sbpps.entity.Servicio;
import com.informatica2016.sbpps.util.Paginado;

/**
 *
 * @author CARLOS
 */
public interface ServicioService extends BaseService<Servicio, Integer> {

    //public List<Servicio> listarTodos();
    public Paginado getPaginationList(Integer page, Integer size, String search);
}
