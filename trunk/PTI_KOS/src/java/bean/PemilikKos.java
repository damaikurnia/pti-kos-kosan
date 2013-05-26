/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author Mich
 */
public class PemilikKos {
    private String idPemilik;
    private String namaPemilik;
    private String alamatPemilik;
    private String noTelp;
    private String password;
    
    public PemilikKos(){
        
    }

    public PemilikKos(String id,String nama,String alamat,String noTelp,String password){
        this.idPemilik = id;
        this.namaPemilik = nama;
        this.alamatPemilik = alamat;
        this.noTelp = noTelp;
        this.password = password;
    }
    /**
     * @return the idPemilik
     */
    public String getIdPemilik() {
        return idPemilik;
    }

    /**
     * @param idPemilik the idPemilik to set
     */
    public void setIdPemilik(String idPemilik) {
        this.idPemilik = idPemilik;
    }

    /**
     * @return the namaPemilik
     */
    public String getNamaPemilik() {
        return namaPemilik;
    }

    /**
     * @param namaPemilik the namaPemilik to set
     */
    public void setNamaPemilik(String namaPemilik) {
        this.namaPemilik = namaPemilik;
    }

    /**
     * @return the alamatPemilik
     */
    public String getAlamatPemilik() {
        return alamatPemilik;
    }

    /**
     * @param alamatPemilik the alamatPemilik to set
     */
    public void setAlamatPemilik(String alamatPemilik) {
        this.alamatPemilik = alamatPemilik;
    }

    /**
     * @return the noTelp
     */
    public String getNoTelp() {
        return noTelp;
    }

    /**
     * @param noTelp the noTelp to set
     */
    public void setNoTelp(String noTelp) {
        this.noTelp = noTelp;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }
}
