package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


public class AcessoBD {
    private Connection con;
    public AcessoBD (){
        con = BDConexao.getConnection();
    }

    public ArrayList<Lenguage> obterLeguages(){
        try {
            ArrayList<Lenguage> lista = new ArrayList<>();
            String sql = "select * from lenguages";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Lenguage l = new Lenguage();
                l.setId(rs.getInt("reference"));
                l.setName(rs.getString("name"));
                l.setYears(rs.getInt("years"));
                l.setDescription(rs.getString("description"));
                l.setDocumentation(rs.getString("documentation"));
                l.setImage(rs.getString("image"));
                lista.add(l);
            }
            con.close();
            return lista;
        } catch (Exception e) {
            System.out.println("Erro: " + e.getMessage());
            ArrayList<Lenguage> lista = new ArrayList<>();
          int i = 0;
          while (i < 3){
              Lenguage l = new Lenguage();
              l.name = "ruby";
              l.years = 20;
              i++;
              lista.add(l);
          }
          return lista;
        }
    }

    public Lenguage obterLenguage(int id){
      try {
          Lenguage l = new Lenguage();
          String sql = "select * from lenguages where reference = ?";
          PreparedStatement ps = con.prepareStatement(sql);
          ps.setInt(1, id);
          ResultSet rs = ps.executeQuery();
          if (rs.next()){
            l.setId(id);
            l.setName(rs.getString("name"));
            l.setYears(rs.getInt("years"));
            l.setDescription(rs.getString("description"));
            l.setDocumentation(rs.getString("documentation"));
            l.setImage(rs.getString("image"));
          }
          con.close();
            return l;
      } catch (Exception e) {
        System.out.println("------- id = " + id);
          return null;
      }
    }


    public boolean insertLenguage(Lenguage l){
      try {
          String sql = "insert into lenguages (name, years, description, documentation, image) values (?, ?, ?, ?, ?)";
          PreparedStatement ps = con.prepareStatement(sql);
          ps.setString(1, l.name);
          ps.setInt(2, l.years);
          ps.setString(3, l.description);
          ps.setString(4, l.documentation);
          ps.setString(5, l.image);
          ps.executeUpdate();
          ps.close();
          con.close();
          return true;
      } catch (Exception e) {
          System.out.println("Erro: " + e.getMessage());
          return false;
      }
    }

    public boolean alterarLenguage(Lenguage l){
      try {
          String sql = "update lenguages set name = ?, years = ?, description = ?, documentation = ?, image = ? where reference = ?";
          PreparedStatement ps = con.prepareStatement(sql);
          ps.setString(1, l.name);
          ps.setInt(2, l.years);
          ps.setString(3, l.description);
          ps.setString(4, l.documentation);
          ps.setString(5, l.image);
          ps.setInt(6, l.id);
          ps.executeUpdate();
          ps.close();
          con.close();
          
          return true;
      } catch (Exception e) {
          System.out.println("Erro: " + e.getMessage());
          return false;
      }
    }

    public boolean excluirLenguage(int id){
      try {
          String sql = "delete from lenguages where reference = ?";
          PreparedStatement ps = con.prepareStatement(sql);
          ps.setInt(1, id);
          ps.executeUpdate();
          ps.close();
          con.close();
          return true;
      } catch (Exception e) {
          System.out.println("Erro: " + e.getMessage());
          return false;
      }
    }
}
