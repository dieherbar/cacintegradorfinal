package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import dataBase.ConexionDB;
import model.Usuario;

public class UsuarioDao {
	
	private void getUsrById(){
		//TODO
	}
	private void getUsrByName() {
		//TODO
	}
	public Boolean validarUsuYPass(String usu,String pass)throws SQLException{
		ConexionDB conexionDB=new ConexionDB();
		Connection conn=conexionDB.establecerConexion();
		
		Statement st=conn.createStatement();
		
		String sql = new String("SELECT * FROM usuarios WHERE usuario='"+usu+"' AND clave ='"+pass+"'");
//		System.out.println(sql);
		ResultSet rs= st.executeQuery(sql);
		
		return rs.next();
	}

	public Boolean crearUsuario(String usu, String pass)throws SQLException{
		ConexionDB conexionDB=new ConexionDB();
		Connection conn=conexionDB.establecerConexion();
		
		Statement st=conn.createStatement();
		
		String sql = new String("INSERT INTO usuarios(usuario, clave) VALUES ('"+usu+"','"+pass+"')");
		System.out.println(sql);
		Integer executeOk = st.executeUpdate(sql);
		return executeOk > 0;
	}
	
		
}
