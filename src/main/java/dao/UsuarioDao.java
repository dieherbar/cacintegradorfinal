package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
		
		String sql = new String("INSERT INTO usuarios(usuario, clave) values ('"+usu+"','"+pass+"')");
		//System.out.println(sql);
		Integer executeOk = st.executeUpdate(sql);
		return executeOk > 0;
	}
	
	public List<Usuario> getAllUsu()throws SQLException {
		ConexionDB conexionDB=new ConexionDB();
		Connection conn=conexionDB.establecerConexion();
		
		Statement st=conn.createStatement();
		
		String sql = new String("SELECT * FROM usuarios");
//		System.out.println(sql);
		ResultSet rs= st.executeQuery(sql);
		
		List<Usuario> listUsuarios = new ArrayList<Usuario>();
		while(rs.next()) {
			Usuario usu = new Usuario(rs.getInt("idusuario"),rs.getString("usuario"),rs.getString("clave"));
			
			listUsuarios.add(usu);
		}
		
		return listUsuarios;
		
		
	}
		
}
