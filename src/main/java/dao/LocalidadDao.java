package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dataBase.ConexionDB;
import model.Localidades;
import model.Provincias;

public class LocalidadDao {
	public static List<Localidades> getAllLocal()throws SQLException {
		ConexionDB conexionDB=new ConexionDB();
		Connection conn=conexionDB.establecerConexion();
		
		Statement st=conn.createStatement();
		
		String sql = new String("SELECT * FROM localidades");
//		System.out.println(sql);
		ResultSet rs= st.executeQuery(sql);
		
		List<Localidades> listLocalidades = new ArrayList<Localidades>();
		ProvinciasDao provinciaDAOC = new ProvinciasDao();
		
		while(rs.next()) {
			Provincias provincia = provinciaDAOC.getProvinciaXID(rs.getInt("idProvincia"));
			
			Localidades local = new Localidades(rs.getInt("idLocalidad"),rs.getString("localidad"),provincia);
			
			listLocalidades.add(local);
		}
		
		return listLocalidades;
					
	}
	
	public Localidades getLocalidadXID(Integer id) throws SQLException {
		//conn a db
		ConexionDB conex = new ConexionDB();
		Connection conn= conex.establecerConexion();
		Statement st = conn.createStatement();
		
		
		String sql = new String("SELECT * FROM localidades WHERE idlocalidad = " + id);
		ResultSet rs = st.executeQuery(sql);

		ProvinciasDao provinciaDAOC = new ProvinciasDao();
		
		while (rs.next()) {
			Provincias provincia = provinciaDAOC.getProvinciaXID(rs.getInt("idProvincia"));
			
			Localidades localidad = new Localidades(rs.getInt("idLocalidad"), rs.getString("localidad"), provincia);
			
			return localidad;
		}		
		
		return null;
	}

}
