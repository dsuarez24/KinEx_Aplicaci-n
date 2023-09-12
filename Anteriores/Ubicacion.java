/*
Auky Daniel Rodriguez Sey
2019473
2:18 PM
7/21/2023
*/
package modelo;

public class Ubicacion {

    private int codigoUbicacion;
    private int codigoTipoUbicacion;
    private String departamento;
    private String municipio;
    private String aldeaColonia;

    public Ubicacion() {
    }

    public Ubicacion(int codigoUbicacion, int codigoTipoUbicacion, String departamento, String municipio, String aldeaColonia) {
        this.codigoUbicacion = codigoUbicacion;
        this.codigoTipoUbicacion = codigoTipoUbicacion;
        this.departamento = departamento;
        this.municipio = municipio;
        this.aldeaColonia = aldeaColonia;
    }

    public int getCodigoUbicacion() {
        return codigoUbicacion;
    }

    public void setCodigoUbicacion(int codigoUbicacion) {
        this.codigoUbicacion = codigoUbicacion;
    }

    public int getCodigoTipoUbicacion() {
        return codigoTipoUbicacion;
    }

    public void setCodigoTipoUbicacion(int codigoTipoUbicacion) {
        this.codigoTipoUbicacion = codigoTipoUbicacion;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public String getMunicipio() {
        return municipio;
    }

    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }

    public String getAldeaColonia() {
        return aldeaColonia;
    }

    public void setAldeaColonia(String aldeaColonia) {
        this.aldeaColonia = aldeaColonia;
    }
    
    
    
    
}
