package model;

public class Usuario {
	private Integer idusuario;
	private String usuario;
	private String clave;
	
	public Usuario(Integer idusuario, String usuario, String clave) {
		super();
		this.idusuario = idusuario;
		this.usuario = usuario;
		this.clave = clave;
	}
	public Usuario(String usuario, String clave) {
		super();
		this.usuario = usuario;
		this.clave = clave;
	}
	
	public Integer getId() {
		return idusuario;
	}
	public void setId(Integer idusuario) {
		this.idusuario = idusuario;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getClave() {
		return clave;
	}
	public void setClave(String clave) {
		this.clave = clave;
	}
	
	

}
