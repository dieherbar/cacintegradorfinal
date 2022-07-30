package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dataBase.ConexionDB;
import model.Provincias;


public class ProvinciasDao {
	public static List<Provincias> getAllProv()throws SQLException {
		ConexionDB conexionDB=new ConexionDB();
		Connection conn=conexionDB.establecerConexion();
		
		Statement st=conn.createStatement();
		
		String sql = new String("SELECT * FROM provincias");
//		System.out.println(sql);
		ResultSet rs= st.executeQuery(sql);
		
		List<Provincias> listProvincias = new ArrayList<Provincias>();
		while(rs.next()) {
			Provincias prov = new Provincias(rs.getInt("idProvincia"),rs.getString("provincianom"));
			
			listProvincias.add(prov);
		}
		
		return listProvincias;
		
		
	}
	
	public Provincias getProvByLoc()throws SQLException {
		ConexionDB conexionDB=new ConexionDB();
		Connection conn=conexionDB.establecerConexion();
		
		Statement st=conn.createStatement();
		
		String sql = new String("SELECT * FROM provincias WHERE idProvincia = (SELECT idProvincia FROM localidades WHERE idLocalidad = 1)");
//		System.out.println(sql);
		ResultSet rs= st.executeQuery(sql);
		
		//List<Provincias> listProvByLoc = new ArrayList<Provincias>();
		//while(rs.next()) {
			Provincias prov = new Provincias(rs.getInt("idProvincia"),rs.getString("provincianom"));
			
		//	listProvByLoc.add(prov);
		//}
		
		return prov;

	}

	public Provincias getProvinciaXID(Integer id) throws SQLException {
		//conn a db
		ConexionDB conex = new ConexionDB();
		Connection conn= conex.establecerConexion();
		Statement st = conn.createStatement();
		
		
		String sql = new String("SELECT * FROM provincias WHERE idprovincia = " + id);
		ResultSet rs = st.executeQuery(sql);

		
		while (rs.next()) {
			
			Provincias provincia = new Provincias(rs.getInt("idProvincia"), rs.getString("provincianom"));
			
			return provincia;
		}		
		
		return null;
	}

}
