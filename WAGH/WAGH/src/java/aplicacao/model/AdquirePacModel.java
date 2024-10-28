package com.aplicacao.model;

import com.aplicacao.conexao.ConexaoMySQL;
import com.aplicacao.dao.Adquire_pac;
import com.aplicacao.dao.Cliente;
import com.aplicacao.dao.Pacote;
import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AdquirePacModel {

    public Adquire_pac consultarAdquirePacCodigo(int cod_ad_pac) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        Adquire_pac adquirePac = new Adquire_pac();
        try {
            String consulta = "SELECT * FROM adquire_pac WHERE cod_ad_pac = ?";
            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, cod_ad_pac);
            ResultSet resultado = stm.executeQuery();

            while (resultado.next()) {
                adquirePac.setCod_ad_pac(resultado.getInt("cod_ad_pac"));
                
                Cliente cliente = new Cliente();
                cliente.setCod_cliente(resultado.getInt("cod_cliente"));
                adquirePac.setCodCliente(cliente);
                
                Pacote pacote = new Pacote();
                pacote.setCod_pacote(resultado.getInt("cod_pacote"));
                adquirePac.setCodPacote(pacote);
                
                adquirePac.setData_aquis_p(resultado.getDate("data_aquis_p").toLocalDate());
            }
        } catch (SQLException ex) {
            System.out.println("Não foi possível realizar a consulta de aquisição de pacotes.");
        } finally {
            try {
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(AdquirePacModel.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return adquirePac;
    }

    public ArrayList<Adquire_pac> consultarAdquirePacs() {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        ArrayList<Adquire_pac> aquisicoes = new ArrayList<>();
        try {
            String consulta = "SELECT * FROM adquire_pac ORDER BY cod_ad_pac";
            Statement stm = conn.createStatement();
            ResultSet resultado = stm.executeQuery(consulta);

            while (resultado.next()) {
                Adquire_pac adquirePac = new Adquire_pac();
                
                adquirePac.setCod_ad_pac(resultado.getInt("cod_ad_pac"));
                
                Cliente cliente = new Cliente();
                cliente.setCod_cliente(resultado.getInt("cod_cliente"));
                adquirePac.setCodCliente(cliente);
                
                Pacote pacote = new Pacote();
                pacote.setCod_pacote(resultado.getInt("cod_pacote"));
                adquirePac.setCodPacote(pacote);
                
                adquirePac.setData_aquis_p(resultado.getDate("data_aquis_p").toLocalDate());
                
                aquisicoes.add(adquirePac);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdquirePacModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(AdquirePacModel.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return aquisicoes;
    }

    public String inserirAdquirePac(Adquire_pac adquirePac) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";

        if (conn == null) {
            return "Erro na conexão com o banco de dados";
        }

        try {
            String consulta = "INSERT INTO adquire_pac (cod_cliente, cod_pacote, data_aquis_p) VALUES (?, ?, ?)";
            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, adquirePac.getCodCliente().getCod_cliente());
            stm.setInt(2, adquirePac.getCodPacote().getCod_pacote());
            stm.setDate(3, Date.valueOf(adquirePac.getData_aquis_p()));

            int linhasAfetadas = stm.executeUpdate();

            resultado = (linhasAfetadas > 0) ? "Dados inseridos com sucesso" : "Nenhum dado foi inserido";
        } catch (SQLException ex) {
            resultado = "Erro ao inserir dados: " + ex.getMessage();
        } finally {
            try {
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(AdquirePacModel.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return resultado;
    }

    public String alterarAdquirePac(Adquire_pac adquirePac) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";

        if (conn == null) {
            return "Erro na conexão com o banco de dados";
        }

        try {
            String consulta = "UPDATE adquire_pac SET cod_cliente = ?, cod_pacote = ?, data_aquis_p = ? WHERE cod_ad_pac = ?";
            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, adquirePac.getCodCliente().getCod_cliente());
            stm.setInt(2, adquirePac.getCodPacote().getCod_pacote());
            stm.setDate(3, Date.valueOf(adquirePac.getData_aquis_p()));
            stm.setInt(4, adquirePac.getCod_ad_pac());

            int linhasAfetadas = stm.executeUpdate();

            resultado = (linhasAfetadas > 0) ? "Dados atualizados com sucesso" : "Nenhum dado foi atualizado";
        } catch (SQLException ex) {
            resultado = "Erro ao atualizar dados: " + ex.getMessage();
        } finally {
            try {
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(AdquirePacModel.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return resultado;
    }

    public String removerAdquirePac(int cod_ad_pac) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";

        if (conn == null) {
            return "Erro na conexão com o banco de dados";
        }

        try {
            String consulta = "DELETE FROM adquire_pac WHERE cod_ad_pac = ?";
            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, cod_ad_pac);

            int linhasAfetadas = stm.executeUpdate();

            resultado = (linhasAfetadas > 0) ? "Aquisição de pacote removida com sucesso" : "Nenhuma aquisição foi removida";
        } catch (SQLException ex) {
            resultado = "Erro ao remover aquisição: " + ex.getMessage();
        } finally {
            try {
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(AdquirePacModel.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return resultado;
    }
}
