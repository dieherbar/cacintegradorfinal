package model;

public class Pedido {
	private Integer idPedido;
	private String nombre;
	private String apellido;
	private String	usuario;
	private String mail;
	private String	lugarentrega;
	private Localidades localidad;
	private Provincias provincia;
	private String codpostal;
	private String formadepago;
	private String tarjtitular;
	private Double tarjnumero;
	private String tarjvto;
	private Integer tarjclave;
	
	public Pedido(Integer idPedido, String nombre, String apellido, String usuario, String mail, String lugarentrega,
			Localidades localidad, String codpostal, String formadepago, String tarjtitular,
			Double tarjnumero, String tarjvto, Integer tarjclave) {
		super();
		this.idPedido = idPedido;
		this.nombre = nombre;
		this.apellido = apellido;
		this.usuario = usuario;
		this.mail = mail;
		this.lugarentrega = lugarentrega;
		this.localidad = localidad;
		this.codpostal = codpostal;
		this.formadepago = formadepago;
		this.tarjtitular = tarjtitular;
		this.tarjnumero = tarjnumero;
		this.tarjvto = tarjvto;
		this.tarjclave = tarjclave;
	}
	
	public Pedido(String nombre, String apellido, String usuario, String mail, String lugarentrega,
			Localidades localidad, Provincias provincia, String codpostal, String formadepago, String tarjtitular,
			Double tarjnumero, String tarjvto, Integer tarjclave) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.usuario = usuario;
		this.mail = mail;
		this.lugarentrega = lugarentrega;
		this.localidad = localidad;
		this.provincia = provincia;
		this.codpostal = codpostal;
		this.formadepago = formadepago;
		this.tarjtitular = tarjtitular;
		this.tarjnumero = tarjnumero;
		this.tarjvto = tarjvto;
		this.tarjclave = tarjclave;
	}
	
	public Pedido(Integer idPedido, String nombre, String apellido, String usuario, String mail, String lugarentrega,
			Localidades localidad, Provincias provincia, String codpostal, String formadepago, String tarjtitular,
			Double tarjnumero, String tarjvto, Integer tarjclave) {
		super();
		this.idPedido = idPedido;
		this.nombre = nombre;
		this.apellido = apellido;
		this.usuario = usuario;
		this.mail = mail;
		this.lugarentrega = lugarentrega;
		this.localidad = localidad;
		this.provincia = provincia;
		this.codpostal = codpostal;
		this.formadepago = formadepago;
		this.tarjtitular = tarjtitular;
		this.tarjnumero = tarjnumero;
		this.tarjvto = tarjvto;
		this.tarjclave = tarjclave;
	}
	public Pedido(String nombre, String apellido, String usuario, String mail, String lugarentrega,
			Localidades localidad, String codpostal, String formadepago, String tarjtitular,
			Double tarjnumero, String tarjvto, Integer tarjclave) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.usuario = usuario;
		this.mail = mail;
		this.lugarentrega = lugarentrega;
		this.localidad = localidad;
		this.codpostal = codpostal;
		this.formadepago = formadepago;
		this.tarjtitular = tarjtitular;
		this.tarjnumero = tarjnumero;
		this.tarjvto = tarjvto;
		this.tarjclave = tarjclave;
	}
	
	public Integer getIdPedido() {
		return idPedido;
	}
	public void setIdPedido(Integer idPedido) {
		this.idPedido = idPedido;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getLugarentrega() {
		return lugarentrega;
	}
	public void setLugarentrega(String lugarentrega) {
		this.lugarentrega = lugarentrega;
	}
	public Localidades getLocalidad() {
		return localidad;
	}
	public void setLocalidad(Localidades localidad) {
		this.localidad = localidad;
	}
	public Provincias getProvincia() {
		return provincia;
	}
	public void setProvincia(Provincias provincia) {
		this.provincia = provincia;
	}
	public String getCodpostal() {
		return codpostal;
	}
	public void setCodpostal(String codpostal) {
		this.codpostal = codpostal;
	}
	public String getFormadepago() {
		return formadepago;
	}
	public void setFormadepago(String formadepago) {
		this.formadepago = formadepago;
	}
	public String getTarjtitular() {
		return tarjtitular;
	}
	public void setTarjtitular(String tarjtitular) {
		this.tarjtitular = tarjtitular;
	}
	public Double getTarjnumero() {
		return tarjnumero;
	}
	public void setTarjnumero(Double tarjnumero) {
		this.tarjnumero = tarjnumero;
	}
	public String getTarjvto() {
		return tarjvto;
	}
	public void setTarjvto(String tarjvto) {
		this.tarjvto = tarjvto;
	}
	public Integer getTarjclave() {
		return tarjclave;
	}
	public void setTarjclave(Integer tarjclave) {
		this.tarjclave = tarjclave;
	}

	
	
}
