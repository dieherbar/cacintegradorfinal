package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dataBase.ConexionDB;
import model.Localidades;
import model.Pedido;
import model.Provincias;

public class PedidoDao {
	
	public Boolean crearPedido(Pedido pedido) throws SQLException{
		
		ConexionDB conexionDB=new ConexionDB();
		Connection conn=conexionDB.establecerConexion();
		
		Statement st=conn.createStatement();
		
		String sql = new String();
				
		
		  sql = "INSERT INTO pedidos " +
		  "(`nombre`, `apellido`, `usuario`, `mail`, `lugarentrega`, `localidad`, `provincia`, `codpostal`, `formadepago`, `tarjtitular`, `tarjnumero`, `tarjvto`, `tarjclave`) "
		  + "VALUES ("
		  + "'"+ pedido.getNombre() + "'," 
		  + "'" + pedido.getApellido() + "'," 
		  + "'" + pedido.getUsuario() + "'," 
		  + "'" + pedido.getMail() + "'," 
		  + "'" + pedido.getLugarentrega() + "'," 
		  + pedido.getLocalidad().getIdLocalidad() + "," 
		  + pedido.getProvincia().getIdProvincia() + "," 
		  + "'" + pedido.getCodpostal() + "'," 
		  + "'" + pedido.getFormadepago() + "'," 
		  + "'" + pedido.getTarjtitular() + "'," 
		  + pedido.getTarjnumero() + "," 
		  + "'" + pedido.getTarjvto() + "'," 
		  +  pedido.getTarjclave() + ")";
		
		System.out.println(sql);
		
		Integer insertOk= st.executeUpdate(sql);

		return insertOk >= 1;
		
	}
	
	public static List<Pedido> getAllPedi()throws SQLException {
		ConexionDB conexionDB=new ConexionDB();
		Connection conn=conexionDB.establecerConexion();
		
		Statement st=conn.createStatement();
		
		String sql = new String("SELECT * FROM pedidos");
//		System.out.println(sql);
		ResultSet rs= st.executeQuery(sql);
		
		List<Pedido> listPedidos = new ArrayList<Pedido>();
		
		LocalidadDao locdao = new LocalidadDao();
		ProvinciasDao provdao = new ProvinciasDao();
		while(rs.next()) {
			Localidades localidad = locdao.getLocalidadXID(rs.getInt("localidad"));
			Provincias provincia = provdao.getProvinciaXID(rs.getInt("provincia"));
			//String pcianom = rs.getString("provincianom");
			
			Pedido pedido = new Pedido(rs.getInt("idPedido"),rs.getString("nombre"),rs.getString("apellido"),rs.getString("usuario"),rs.getString("mail"),rs.getString("lugarentrega"),localidad,provincia,rs.getString("codpostal"),rs.getString("formadepago"),rs.getString("tarjtitular"),rs.getDouble("tarjnumero"),rs.getString("tarjvto"),rs.getInt("tarjclave"));
			
			listPedidos.add(pedido);
		}
		
		return listPedidos;
		
		
	}

}
