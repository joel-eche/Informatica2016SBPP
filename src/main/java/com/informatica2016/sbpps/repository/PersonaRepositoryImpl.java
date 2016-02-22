/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.informatica2016.sbpps.repository;

import com.informatica2016.sbpps.entity.Persona;
import org.springframework.stereotype.Repository;

/**
 *
 * @author CARLOS
 */
@Repository
public class PersonaRepositoryImpl extends BaseRepositoryImpl<Persona, String>
        implements PersonaRepository {

//    @Autowired
//    private SessionFactory sessionFactory;
//
//    @Override
//    public Session getSession() {
//        return sessionFactory.getCurrentSession();
//    }
//
//    @Override
//    public List<Servicio> listarTodos() {
//        return getSession().createQuery("from Servicio e").list();
//    }
}
