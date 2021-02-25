/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.parus.dal;

import java.sql.*;

/**
 *
 * @author adrieldev
 */
public class ModuloConexao {
    //método responsável por estabelecer conexão com o mariaDB

    public static Connection conector() {
        java.sql.Connection conexao = null;
        //chamar o driver do mariaDB:
        String driver = "com.mysql.jdbc.Driver";
        // Armazenando informações referente ao banco
        String url = "jdbc:mysql://localhost:3306/Desafio";
        String user = "adrieldev";
        String password = "c13082003";
        
        //Estabelecendo a conexão com o banco
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
            
        } catch (Exception e) {
            //para apoio (esclarecer o erro):
            //System.out.println(e);
            return null;
        }
        
    }

}
