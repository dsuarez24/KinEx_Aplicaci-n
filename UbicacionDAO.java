/*

 

Auky Daniel Rodriguez Sey
14:25
7/09/2023

 

*/
package modelo;

 

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

 

public class UbicacionDAO {

 

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;

    public List listar(){

    String sql = "Select * from Ubicacion";
    List<Ubicacion> listaUbicacion = new ArrayList<>();

    try {

        con = cn.Conexion();
        ps = con.prepareStatement(sql);
        rs = ps.executeQuery();

        while(rs.next()){

            Ubicacion ubi = new Ubicacion();

            ubi.setCodigoTipoUbicacion(rs.getInt(1));
            ubi.setCodigoUbicacion(rs.getInt(2));
            ubi.setDepartamento(rs.getString(3));
            ubi.setMunicipio(rs.getString(4));
            ubi.setAldeaColonia(rs.getString(5));

            listaUbicacion.add(ubi);
        }   
    } 

    catch (Exception e) {
        e.printStackTrace();
    }
    return listaUbicacion;
}    

    public int agregar (Ubicacion ubi){
        String sql = "insert into Ubicacion (codigoTipoUbicacion,codigoUbicacion, departamento, municipio, aldeaColonia) values (?,?,?,?,?)";
        try {

            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, ubi.getCodigoTipoUbicacion());
            ps.setInt(2, ubi.getCodigoUbicacion());
            ps.setString(3, ubi.getDepartamento());
            ps.setString(4, ubi.getMunicipio());
            ps.setString(5, ubi.getAldeaColonia());
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("No se puedo agregar la Ruta");
        }

        return resp;
    }

    public Ubicacion listarCodigoUbicacion (int id){
        Ubicacion ubi = new Ubicacion();
        String sql = "select * from ubicacion where codigoUbicacion = "+ id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){

            ubi.setCodigoTipoUbicacion(rs.getInt(1));
            ubi.setCodigoUbicacion(rs.getInt(2));
            ubi.setDepartamento(rs.getString(3));
            ubi.setMunicipio(rs.getString(4));
            ubi.setAldeaColonia(rs.getString(5));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ubi;
    }
    
}
