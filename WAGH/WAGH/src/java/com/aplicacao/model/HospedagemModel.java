package com.aplicacao.model;

import com.aplicacao.conexao.ConexaoMySQL;
import com.aplicacao.dao.Hospedagem;
import com.aplicacao.dao.Cidade;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class HospedagemModel {

    public static void main(String[] args) {
        HospedagemModel teste = new HospedagemModel();
    }

    public Hospedagem consultarHospedagemCodigo(int cod_hospedagem) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        Hospedagem hospedagem = new Hospedagem();
        try {
            String consulta = "SELECT * FROM hospedagem WHERE cod_hospedagem = " + cod_hospedagem;

            Statement stm = conn.createStatement();
            ResultSet resultado = stm.executeQuery(consulta);

            while (resultado.next()) {
                hospedagem.setCod_hospedagem(resultado.getInt("cod_hospedagem"));
                hospedagem.setNome_hotel(resultado.getString("nome_hotel"));
                hospedagem.setCEP(resultado.getString("CEP"));
                hospedagem.setPreco_hosp(resultado.getInt("preco_hosp"));
                hospedagem.setQuarto(resultado.getInt("quarto"));
                hospedagem.setAvaliacao(resultado.getInt("avaliacao"));
                hospedagem.setTipo_hospedagem(resultado.getString("tipo_hospedagem"));

                // Assumindo que cod_cidade é apenas um ID. Para detalhes completos, precisaria buscar a cidade.
                int codCidade = resultado.getInt("cod_cidade");
                Cidade cidade = new Cidade(); // Criar instância de Cidade
                cidade.setCod_cidade(codCidade); // Atribui o ID da cidade
                hospedagem.setCod_cidade(cidade);
            }
        } catch (SQLException ex) {
            System.out.println("Não foi possível realizar a consulta das hospedagens.");
        }
        return hospedagem;
    }

    public ArrayList<Hospedagem> consultarHospedagens() {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = null;
        ArrayList<Hospedagem> geral = new ArrayList<>();
        try {
            conn = conexao.conectar(); 
            if (conn == null) {
                System.out.println("Falha ao estabelecer conexão com o banco de dados");
                return geral;
            }

            String consulta = "SELECT * FROM hospedagem ORDER BY cod_hospedagem";
            try (Statement stm = conn.createStatement(); ResultSet resultado = stm.executeQuery(consulta)) {

                while (resultado.next()) {
                    Hospedagem hospedagem = new Hospedagem();

                    hospedagem.setCod_hospedagem(resultado.getInt("cod_hospedagem"));
                    hospedagem.setNome_hotel(resultado.getString("nome_hotel"));
                    hospedagem.setCEP(resultado.getString("CEP"));
                    hospedagem.setPreco_hosp(resultado.getInt("preco_hosp"));
                    hospedagem.setQuarto(resultado.getInt("quarto"));
                    hospedagem.setAvaliacao(resultado.getInt("avaliacao"));
                    hospedagem.setTipo_hospedagem(resultado.getString("tipo_hospedagem"));

                    Cidade cidade = new Cidade();
                    cidade.setCod_cidade(resultado.getInt("cod_cidade"));
                    hospedagem.setCod_cidade(cidade);

                    geral.add(hospedagem);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(HospedagemModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(HospedagemModel.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return geral;
    }

    public String inserirHospedagem(Hospedagem hospedagem) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";

        if (conn == null) {
            return "Erro na conexão com o banco de dados";
        }

        try {
            String consulta = "INSERT INTO hospedagem (nome_hotel, CEP, preco_hosp, quarto, avaliacao, tipo_hospedagem, cod_cidade) VALUES (?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setString(1, hospedagem.getNome_hotel());
            stm.setString(2, hospedagem.getCEP());
            stm.setInt(3, hospedagem.getPreco_hosp());
            stm.setInt(4, hospedagem.getQuarto());
            stm.setInt(5, hospedagem.getAvaliacao());
            stm.setString(6, hospedagem.getTipo_hospedagem());
            stm.setInt(7, hospedagem.getCod_cidade().getCod_cidade());

            int linhasAfetadas = stm.executeUpdate();

            resultado = (linhasAfetadas > 0) ? "Dados inseridos com sucesso" : "Nenhum dado foi inserido";
        } catch (SQLException ex) {
            resultado = "Erro ao inserir dados: " + ex.getMessage();
        } finally {
            try {
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(HospedagemModel.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return resultado;
    }

    public String alterarHospedagem(Hospedagem hospedagem) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";

        if (conn == null) {
            return "Erro na conexão com o banco de dados";
        }

        try {
            String consulta = "UPDATE hospedagem SET "
                    + "nome_hotel = ?, CEP = ?, preco_hosp = ?, quarto = ?, avaliacao = ?, tipo_hospedagem = ?, cod_cidade = ? "
                    + "WHERE cod_hospedagem = ?";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setString(1, hospedagem.getNome_hotel());
            stm.setString(2, hospedagem.getCEP());
            stm.setInt(3, hospedagem.getPreco_hosp());
            stm.setInt(4, hospedagem.getQuarto());
            stm.setInt(5, hospedagem.getAvaliacao());
            stm.setString(6, hospedagem.getTipo_hospedagem());
            stm.setInt(7, hospedagem.getCod_cidade().getCod_cidade());
            stm.setInt(8, hospedagem.getCod_hospedagem());

            int linhasAfetadas = stm.executeUpdate();

            resultado = (linhasAfetadas > 0) ? "Dados atualizados com sucesso" : "Nenhum dado foi atualizado";
        } catch (SQLException ex) {
            resultado = "Erro ao atualizar dados: " + ex.getMessage();
        } finally {
            try {
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(HospedagemModel.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return resultado;
    }

    public String removerHospedagem(int cod_hospedagem) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";

        if (conn == null) {
            return "Erro na conexão com o banco de dados";
        }

        try {
            String consulta = "DELETE FROM hospedagem WHERE cod_hospedagem = ?";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, cod_hospedagem);

            int linhasAfetadas = stm.executeUpdate();

            resultado = (linhasAfetadas > 0) ? "Hospedagem removida com sucesso" : "Nenhuma hospedagem foi removida";
        } catch (SQLException ex) {
            resultado = "Erro ao remover hospedagem: " + ex.getMessage();
        } finally {
            try {
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(HospedagemModel.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return resultado;
    }
}
