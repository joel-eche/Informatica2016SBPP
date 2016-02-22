/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.informatica2016.sbpps.repository;

import com.informatica2016.sbpps.entity.Servicio;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author CARLOS
 */
@Repository
public class ServicioRepositoryImpl extends BaseRepositoryImpl<Servicio, Integer>
        implements ServicioRepository {

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
