/*
Auky Daniel Rodriguez Sey
2019473
2:25 PM
7/21/2023
*/
package modelo;

public class TipoUbicacion {

    private int codigoTipoUbicacion;
    private String direccion;

    public TipoUbicacion() {
    }

    public TipoUbicacion(int codigoTipoUbicacion, String direccion) {
        this.codigoTipoUbicacion = codigoTipoUbicacion;
        this.direccion = direccion;
    }

    public int getCodigoTipoUbicacion() {
        return codigoTipoUbicacion;
    }

    public void setCodigoTipoUbicacion(int codigoTipoUbicacion) {
        this.codigoTipoUbicacion = codigoTipoUbicacion;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    
}
