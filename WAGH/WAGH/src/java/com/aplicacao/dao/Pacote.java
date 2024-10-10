package com.aplicacao.dao;

import java.time.LocalDate;

/**
 * Classe Pacote mapeada para a estrutura de banco de dados SQL.
 */
public class Pacote {
    private Integer cod_pacote;         // Código do pacote (chave primária)
    private String destino;             // Destino da viagem
    private LocalDate data_partida;     // Data de partida
    private String origem;              // Local de origem
    private LocalDate data_volta;       // Data de volta
    private Double preco_pac;           // Preço do pacote (numérico com 2 casas decimais)
    private String companhia;           // Nome da companhia (aérea ou marítima)
    private char tipo_companhia;        // Tipo da companhia ('A' para aérea, 'M' para marítima)
    private String aviao;               // Modelo do avião (se aplicável)
    private String navio;               // Nome do navio (se aplicável)
    private Integer capacidade;         // Capacidade do navio ou avião
    private String percurso;            // Percurso (se aplicável, especialmente para navio)
    private char classe_navio;         

    public Pacote() {}

    // Construtor com parâmetros
    public Pacote(Integer cod_pacote, String destino, LocalDate data_partida, String origem, LocalDate data_volta, Double preco_pac,
                  String companhia, char tipo_companhia, String aviao, String navio, Integer capacidade, String percurso, char classe_navio) {
        this.cod_pacote = cod_pacote;
        this.destino = destino;
        this.data_partida = data_partida;
        this.origem = origem;
        this.data_volta = data_volta;
        this.preco_pac = preco_pac;
        this.companhia = companhia;
        this.tipo_companhia = tipo_companhia;
        this.aviao = aviao;
        this.navio = navio;
        this.capacidade = capacidade;
        this.percurso = percurso;
        this.classe_navio = classe_navio;
    }

    // Getters e Setters
    public Integer getCod_pacote() {
        return cod_pacote;
    }

    public void setCod_pacote(Integer cod_pacote) {
        this.cod_pacote = cod_pacote;
    }

    public String getDestino() {
        return destino;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public LocalDate getData_partida() {
        return data_partida;
    }

    public void setData_partida(LocalDate data_partida) {
        this.data_partida = data_partida;
    }

    public String getOrigem() {
        return origem;
    }

    public void setOrigem(String origem) {
        this.origem = origem;
    }

    public LocalDate getData_volta() {
        return data_volta;
    }

    public void setData_volta(LocalDate data_volta) {
        this.data_volta = data_volta;
    }

    public Double getPreco_pac() {
        return preco_pac;
    }

    public void setPreco_pac(Double preco_pac) {
        this.preco_pac = preco_pac;
    }

    public String getCompanhia() {
        return companhia;
    }

    public void setCompanhia(String companhia) {
        this.companhia = companhia;
    }

    public char getTipo_companhia() {
        return tipo_companhia;
    }

    public void setTipo_companhia(char tipo_companhia) {
        this.tipo_companhia = tipo_companhia;
    }

    public String getAviao() {
        return aviao;
    }

    public void setAviao(String aviao) {
        this.aviao = aviao;
    }

    public String getNavio() {
        return navio;
    }

    public void setNavio(String navio) {
        this.navio = navio;
    }

    public Integer getCapacidade() {
        return capacidade;
    }

    public void setCapacidade(Integer capacidade) {
        this.capacidade = capacidade;
    }

    public String getPercurso() {
        return percurso;
    }

    public void setPercurso(String percurso) {
        this.percurso = percurso;
    }

    public char getClasse_navio() {
        return classe_navio;
    }

    public void setClasse_navio(char classe_navio) {
        this.classe_navio = classe_navio;
    }
}
