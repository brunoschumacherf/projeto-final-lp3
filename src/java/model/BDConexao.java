/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.sql.Connection;
import java.sql.DriverManager;

public class BDConexao {
  public static Connection getConnection(){
    try {
      Class.forName("org.sqlite.JDBC");
      String str = "jdbc:sqlite:/Users/brunoschumacherf/leguanges.db3";
      Connection con = DriverManager.getConnection(str);
      return con;
    } catch (Exception e) {
      System.out.println("Erro: " + e.getMessage());
      return null;
    }
  }
}
