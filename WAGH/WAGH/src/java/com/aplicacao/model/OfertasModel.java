package com.aplicacao.model;

import com.aplicacao.conexao.ConexaoMySQL;
import com.aplicacao.dao.Ofertas;
import com.aplicacao.dao.Pacote;
import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class OfertasModel {

    public static void main(String[] args) {
        OfertasModel teste = new OfertasModel();
    }

    public Ofertas consultarOfertaCodigo(int cod_oferta) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        Ofertas oferta = new Ofertas();
        try {
            String consulta = "SELECT * FROM ofertas WHERE cod_oferta = " + cod_oferta;

            Statement stm = conn.createStatement();
            ResultSet resultado = stm.executeQuery(consulta);

            while (resultado.next()) {
                oferta.setCod_oferta(resultado.getInt("cod_oferta"));
                oferta.setTempo_inicial(resultado.getDate("tempo_inicial").toLocalDate());
                oferta.setTempo_final(resultado.getDate("tempo_final").toLocalDate());
                oferta.setPercentual_desconto(resultado.getInt("percentual_desconto"));

                int codPacote = resultado.getInt("cod_pacote");
                Pacote pacote = new Pacote(); 
                pacote.setCod_pacote(codPacote); 
                oferta.setCod_pacote(pacote);
            }
        } catch (SQLException ex) {
            System.out.println("Não foi possível realizar a consulta das ofertas.");
        }
        return oferta;
    }

    public ArrayList<Ofertas> consultarOfertas() {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = null;
        ArrayList<Ofertas> geral = new ArrayList<>();
        try {
            conn = conexao.conectar(); 
            if (conn == null) {
                System.out.println("Falha ao estabelecer conexão com o banco de dados");
                return geral;
            }

            String consulta = "SELECT * FROM ofertas ORDER BY cod_oferta";
            try (Statement stm = conn.createStatement(); ResultSet resultado = stm.executeQuery(consulta)) {

                while (resultado.next()) {
                    Ofertas oferta = new Ofertas();

                    oferta.setCod_oferta(resultado.getInt("cod_oferta"));
                    oferta.setTempo_inicial(resultado.getDate("tempo_inicial").toLocalDate());
                    oferta.setTempo_final(resultado.getDate("tempo_final").toLocalDate());
                    oferta.setPercentual_desconto(resultado.getInt("percentual_desconto"));
                    
                    Pacote pacote = new Pacote(); 
                    pacote.setCod_pacote(resultado.getInt("cod_pacote"));
                    oferta.setCod_pacote(pacote);

                    geral.add(oferta);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(OfertasModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(OfertasModel.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return geral;
    }

    public String inserirOferta(Ofertas oferta) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";

        if (conn == null) {
            return "Erro na conexão com o banco de dados";
        }

        try {
            String consulta = "INSERT INTO ofertas (tempo_inicial, tempo_final, percentual_desconto, cod_pacote) VALUES (?, ?, ?, ?)";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setDate(1, java.sql.Date.valueOf(oferta.getTempo_inicial()));
            stm.setDate(2, java.sql.Date.valueOf(oferta.getTempo_final()));
            stm.setInt(3, oferta.getPercentual_desconto());
            stm.setInt(4, oferta.getCod_pacote().getCod_pacote());

            int linhasAfetadas = stm.executeUpdate();

            resultado = (linhasAfetadas > 0) ? "Dados inseridos com sucesso" : "Nenhum dado foi inserido";
        } catch (SQLException ex) {
            resultado = "Erro ao inserir dados: " + ex.getMessage();
        } finally {
            try {
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(OfertasModel.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return resultado;
    }

    public String alterarOferta(Ofertas oferta) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";

        if (conn == null) {
            return "Erro na conexão com o banco de dados";
        }

        try {
            String consulta = "UPDATE ofertas SET "
                    + "tempo_inicial = ?, tempo_final = ?, percentual_desconto = ?, cod_pacote = ? "
                    + "WHERE cod_oferta = ?";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setDate(1, java.sql.Date.valueOf(oferta.getTempo_inicial()));
            stm.setDate(2, java.sql.Date.valueOf(oferta.getTempo_final()));
            stm.setInt(3, oferta.getPercentual_desconto());
            stm.setInt(4, oferta.getCod_pacote().getCod_pacote());
            stm.setInt(5, oferta.getCod_oferta());

            int linhasAfetadas = stm.executeUpdate();

            resultado = (linhasAfetadas > 0) ? "Dados atualizados com sucesso" : "Nenhum dado foi atualizado";
        } catch (SQLException ex) {
            resultado = "Erro ao atualizar dados: " + ex.getMessage();
        } finally {
            try {
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(OfertasModel.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return resultado;
    }

    public String removerOferta(int cod_oferta) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";

        if (conn == null) {
            return "Erro na conexão com o banco de dados";
        }

        try {
            String consulta = "DELETE FROM ofertas WHERE cod_oferta = ?";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, cod_oferta);

            int linhasAfetadas = stm.executeUpdate();

            resultado = (linhasAfetadas > 0) ? "Oferta removida com sucesso" : "Nenhuma oferta foi removida";
        } catch (SQLException ex) {
            resultado = "Erro ao remover oferta: " + ex.getMessage();
        } finally {
            try {
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(OfertasModel.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return resultado;
    }
}
