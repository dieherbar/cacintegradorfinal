package model;

public class Localidades {
	private Integer idLocalidad;
	private String localidad;
	private Provincias provincia;
	
	public Localidades(Integer idLocalidad, String localidad, Provincias provincia) {
		super();
		this.idLocalidad = idLocalidad;
		this.localidad = localidad;
		this.provincia = provincia;
	}

	public Integer getIdLocalidad() {
		return idLocalidad;
	}

	public void setIdLocalidad(Integer idLocalidad) {
		this.idLocalidad = idLocalidad;
	}

	public String getLocalidad() {
		return localidad;
	}

	public void setLocalidad(String localidad) {
		this.localidad = localidad;
	}

	public Provincias getIdProvincia() {
		return provincia;
	}

	public void setIdProvincia(Provincias idProvincia) {
		this.provincia = idProvincia;
	}
	
	

}
