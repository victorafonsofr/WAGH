/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aplicacao.dao;

import java.time.LocalDate;

/**
 *
 * @author aluno
 */
public class Adquire_pac {

    private Integer cod_ad_pac;
    private Cliente cod_cliente;
    private Pacote cod_pacote;
    private LocalDate data_aquis_p;

    public Adquire_pac(Integer cod_ad_pac, Cliente cod_cliente, Pacote cod_pacote, LocalDate data_aquis_p) {
        this.cod_ad_pac = cod_ad_pac;
        this.cod_cliente = cod_cliente;
        this.cod_pacote = cod_pacote;
        this.data_aquis_p = data_aquis_p;
    }

    public Adquire_pac() {}

    public Integer getCod_ad_pac() {
        return cod_ad_pac;
    }

    public void setCod_ad_pac(Integer cod_ad_pac) {
        this.cod_ad_pac = cod_ad_pac;
    }

    public Cliente getCodCliente() {
        return cod_cliente;
    }

    public void setCodCliente(Cliente cod_cliente) {
        this.cod_cliente = cod_cliente;
    }

    public Pacote getCodPacote() {
        return cod_pacote;
    }

    public void setCodPacote(Pacote cod_pacote) {
        this.cod_pacote = cod_pacote;
    }

    public LocalDate getData_aquis_p() {
        return data_aquis_p;
    }

    public void setData_aquis_p(LocalDate data_aquis_p) {
        this.data_aquis_p = data_aquis_p;
    }
}
