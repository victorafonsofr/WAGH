package com.aplicacao.model;

import com.aplicacao.conexao.ConexaoMySQL;
import com.aplicacao.dao.Pacote;
import java.sql.*;
import java.util.ArrayList;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PacoteModel {
    public static void main(String[] args) {
        PacoteModel teste = new PacoteModel();
        ArrayList<Pacote> pac = teste.consultarPacote();
        teste.imprimirPacote(pac);
    }

    public Pacote consultarPacoteCodigo(int cod_pacote) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        Pacote pac = new Pacote();
        try {
            String consulta = "SELECT * FROM pacote WHERE cod_pacote = ?";
            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, cod_pacote);
            ResultSet resultado = stm.executeQuery();

            if (resultado.next()) {
                pac.setCod_pacote(resultado.getInt("cod_pacote"));
                pac.setDestino(resultado.getString("destino"));
                pac.setData_partida(resultado.getDate("data_partida").toLocalDate());
                pac.setOrigem(resultado.getString("origem"));
                pac.setData_volta(resultado.getDate("data_volta").toLocalDate());
                pac.setPreco_pac(resultado.getDouble("preco_pac"));
                pac.setCompanhia(resultado.getString("companhia"));
                pac.setTipo_companhia(resultado.getString("tipo_companhia").charAt(0)); // Supondo que seja um único caractere
                pac.setAviao(resultado.getString("aviao"));
                pac.setNavio(resultado.getString("navio"));
                pac.setClasse_navio(resultado.getString("classe_navio").charAt(0)); // Supondo que seja um único caractere
                pac.setCapacidade(resultado.getInt("capacidade"));
                pac.setPercurso(resultado.getString("percurso"));
            }
        } catch (SQLException ex) {
            System.out.println("Não foi possível realizar a consulta dos pacotes.");
            Logger.getLogger(PacoteModel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pac;
    }

    public ArrayList<Pacote> consultarPacote() {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        ArrayList<Pacote> geral = new ArrayList<>();
        try {
            String consulta = "SELECT * FROM pacote ORDER BY destino";
            Statement stm = conn.createStatement();
            ResultSet resultado = stm.executeQuery(consulta);

            while (resultado.next()) {
                Pacote pac = new Pacote();
                pac.setCod_pacote(resultado.getInt("cod_pacote"));
                pac.setDestino(resultado.getString("destino"));
                pac.setData_partida(resultado.getDate("data_partida").toLocalDate());
                pac.setOrigem(resultado.getString("origem"));
                pac.setData_volta(resultado.getDate("data_volta").toLocalDate());
                pac.setPreco_pac(resultado.getDouble("preco_pac"));
                pac.setCompanhia(resultado.getString("companhia"));
                pac.setTipo_companhia(resultado.getString("tipo_companhia").charAt(0)); // Supondo que seja um único caractere
                pac.setAviao(resultado.getString("aviao"));
                pac.setNavio(resultado.getString("navio"));
                pac.setClasse_navio(resultado.getString("classe_navio").charAt(0)); // Supondo que seja um único caractere
                pac.setCapacidade(resultado.getInt("capacidade"));
                pac.setPercurso(resultado.getString("percurso"));

                geral.add(pac);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PacoteModel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return geral;
    }

    public String inserirPacote(Pacote pacote) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "INSERT INTO pacote (destino, data_partida, origem, data_volta, preco_pac, companhia, tipo_companhia, aviao, navio, classe_navio, capacidade, percurso) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setString(1, pacote.getDestino());
            stm.setDate(2, Date.valueOf(pacote.getData_partida())); // Convertendo LocalDate para Date
            stm.setString(3, pacote.getOrigem());
            stm.setDate(4, Date.valueOf(pacote.getData_volta())); // Convertendo LocalDate para Date
            stm.setDouble(5, pacote.getPreco_pac());
            stm.setString(6, pacote.getCompanhia());
            stm.setString(7, String.valueOf(pacote.getTipo_companhia())); // Convertendo char para String
            stm.setString(8, pacote.getAviao());
            stm.setString(9, pacote.getNavio());
            stm.setString(10, String.valueOf(pacote.getClasse_navio())); // Convertendo char para String
            stm.setInt(11, pacote.getCapacidade());
            stm.setString(12, pacote.getPercurso());

            stm.executeUpdate();
            resultado = "Dados inseridos com sucesso";
        } catch (SQLException ex) {
            System.out.println(ex.getSQLState());
            resultado = "Erro ao inserir dados";
        }
        return resultado;
    }

    public void imprimirPacote(Pacote pacote) {
        System.out.println("Código: " + pacote.getCod_pacote() + "\n" +
                "Destino: " + pacote.getDestino() + "\n" +
                "Data de partida: " + pacote.getData_partida() + "\n" +
                "Origem: " + pacote.getOrigem() + "\n" +
                "Data de volta: " + pacote.getData_volta() + "\n" +
                "Preço do pacote: " + pacote.getPreco_pac() + "\n" +
                "Companhia: " + pacote.getCompanhia() + "\n" +
                "Tipo de companhia: " + pacote.getTipo_companhia() + "\n" +
                "Avião: " + pacote.getAviao() + "\n" +
                "Navio: " + pacote.getNavio() + "\n" +
                "Classe do navio: " + pacote.getClasse_navio() + "\n" +
                "Capacidade: " + pacote.getCapacidade() + "\n" +
                "Percurso: " + pacote.getPercurso() + "\n");
    }

    public void imprimirPacote(ArrayList<Pacote> pacotes) {
        for (Pacote pac : pacotes) {
            imprimirPacote(pac);
        }
    }

    public String alterarPacote(Pacote pacote) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "UPDATE pacote SET destino = ?, data_partida = ?, origem = ?, data_volta = ?, preco_pac = ?, companhia = ?, tipo_companhia = ?, aviao = ?, navio = ?, classe_navio = ?, capacidade = ?, percurso = ? WHERE cod_pacote = ?";
            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setString(1, pacote.getDestino());
            stm.setDate(2, Date.valueOf(pacote.getData_partida())); // Convertendo LocalDate para Date
            stm.setString(3, pacote.getOrigem());
            stm.setDate(4, Date.valueOf(pacote.getData_volta())); // Convertendo LocalDate para Date
            stm.setDouble(5, pacote.getPreco_pac());
            stm.setString(6, pacote.getCompanhia());
            stm.setString(7, String.valueOf(pacote.getTipo_companhia())); // Convertendo char para String
            stm.setString(8, pacote.getAviao());
            stm.setString(9, pacote.getNavio());
            stm.setString(10, String.valueOf(pacote.getClasse_navio())); // Convertendo char para String
            stm.setInt(11, pacote.getCapacidade());
            stm.setString(12, pacote.getPercurso());
            stm.setInt(13, pacote.getCod_pacote());

            stm.executeUpdate();
            resultado = "Dados atualizados com sucesso";
        } catch (SQLException ex) {
            System.out.println(ex.getSQLState());
            resultado = "Erro ao atualizar a tabela 'pacote'";
        }
        return resultado;
    }

    public String removerPacote(int cod_pacote) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "DELETE FROM pacote WHERE cod_pacote = ?";
            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, cod_pacote);
            stm.executeUpdate();
            resultado = "Pacote removido com sucesso!";
        } catch (SQLException ex) {
            resultado = "Erro ao remover pacote!";
        }
        return resultado;
    }
}
