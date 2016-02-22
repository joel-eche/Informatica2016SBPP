/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.informatica2016.sbpps.dto;

import com.informatica2016.sbpps.entity.Persona;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;

/**
 *
 * @author CARLOS
 */
public class PersonaDTO {

    private String dni;
    private String nombres;
    private String apellidos;
    private Character sexo;
    private String direccion;
    private Date fecha;
    private Boolean estado;

    public PersonaDTO() {
    }

    public PersonaDTO(Persona persona) {
        this.dni = persona.getDni();
        this.nombres = persona.getNombres();
        this.apellidos = persona.getApellidos();
        this.sexo = persona.getSexo();
        this.direccion = persona.getDireccion();
        this.fecha = persona.getFecha();
        this.estado = persona.getEstado();
    }

    public PersonaDTO(String dni, String nombres, String apellidos, Character sexo, String direccion, Date fecha, Boolean estado) {
        this.dni = dni;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.sexo = sexo;
        this.direccion = direccion;
        this.fecha = fecha;
        this.estado = estado;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public Character getSexo() {
        return sexo;
    }

    public void setSexo(Character sexo) {
        this.sexo = sexo;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Boolean getEstado() {
        return estado;
    }

    public void setEstado(Boolean estado) {
        this.estado = estado;
    }

}
