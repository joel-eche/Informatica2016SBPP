/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.informatica2016.sbpps.dto;

import com.informatica2016.sbpps.entity.Servicio;
import java.math.BigDecimal;

/**
 *
 * @author CARLOS
 */
public class ServicioDTO {

    private Integer idservicio;
    private String nombre;
    private String descripcion;
    private BigDecimal monto;
    private Boolean activo;

    public ServicioDTO() {
    }
    
    public ServicioDTO(Servicio servicio) {
        this.idservicio = servicio.getIdservicio();
        this.nombre = servicio.getNombre();
        this.descripcion = servicio.getDescripcion();
        this.monto = servicio.getMonto();
        this.activo = servicio.getActivo();
    }

    public ServicioDTO(Integer idservicio, String nombre, String descripcion, BigDecimal monto, Boolean activo) {
        this.idservicio = idservicio;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.monto = monto;
        this.activo = activo;
    }

    public Integer getIdservicio() {
        return idservicio;
    }

    public void setIdservicio(Integer idservicio) {
        this.idservicio = idservicio;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public BigDecimal getMonto() {
        return monto;
    }

    public void setMonto(BigDecimal monto) {
        this.monto = monto;
    }

    public Boolean getActivo() {
        return activo;
    }

    public void setActivo(Boolean activo) {
        this.activo = activo;
    }
}
