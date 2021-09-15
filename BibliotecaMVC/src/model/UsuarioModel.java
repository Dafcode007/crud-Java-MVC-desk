
package model;

/**
 *
 * @author dafma
 */
public class UsuarioModel {
    private String usuUsername;
    private String usuNombres;
    private String usuApellidos;
    private String usuEmail;
    private int usuCelular;
    private String usuClave;
    private String usuFechaNacimiento;
    
    public UsuarioModel(String usuUsername, String usuNombres, String usuApellidos, String usuEmail, int usuCelular, String usuClave, String usuFechaNacimiento){
        this.usuUsername = usuUsername;
        this.usuNombres = usuNombres;
        this.usuApellidos = usuApellidos;
        this.usuEmail = usuEmail;
        this.usuCelular = usuCelular;
        this.usuClave = usuClave;
        this.usuFechaNacimiento = usuFechaNacimiento;
    }

    public UsuarioModel() {
    }

    public String getUsuUsername() {
        return usuUsername;
    }

    public void setUsuUsername(String usuUsername) {
        this.usuUsername = usuUsername;
    }

    public String getUsuNombres() {
        return usuNombres;
    }

    public void setUsuNombres(String usuNombres) {
        this.usuNombres = usuNombres;
    }

    public String getUsuApellidos() {
        return usuApellidos;
    }

    public void setUsuApellidos(String usuApellidos) {
        this.usuApellidos = usuApellidos;
    }

    public String getUsuEmail() {
        return usuEmail;
    }

    public void setUsuEmail(String usuEmail) {
        this.usuEmail = usuEmail;
    }

    public int getUsuCelular() {
        return usuCelular;
    }

    public void setUsuCelular(int usuCelular) {
        this.usuCelular = usuCelular;
    }

    public String getUsuClave() {
        return usuClave;
    }

    public void setUsuClave(String usuClave) {
        this.usuClave = usuClave;
    }

    public String getUsuFechaNacimiento() {
        return usuFechaNacimiento;
    }

    public void setUsuFechaNacimiento(String usuFechaNacimiento) {
        this.usuFechaNacimiento = usuFechaNacimiento;
    }
    
    
}
