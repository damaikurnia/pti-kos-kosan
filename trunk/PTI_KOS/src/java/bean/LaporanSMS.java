/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.util.Date;

/**
 *
 * @author Mich
 */
public class LaporanSMS {
    private PemilikKos idPemilik;
    private SMS idSMS;
    private String statusPesan;
    private Date tanggal;

    /**
     * @return the idPemilik
     */
    public PemilikKos getIdPemilik() {
        return idPemilik;
    }

    /**
     * @param idPemilik the idPemilik to set
     */
    public void setIdPemilik(PemilikKos idPemilik) {
        this.idPemilik = idPemilik;
    }

    /**
     * @return the idSMS
     */
    public SMS getIdSMS() {
        return idSMS;
    }

    /**
     * @param idSMS the idSMS to set
     */
    public void setIdSMS(SMS idSMS) {
        this.idSMS = idSMS;
    }

    /**
     * @return the statusPesan
     */
    public String getStatusPesan() {
        return statusPesan;
    }

    /**
     * @param statusPesan the statusPesan to set
     */
    public void setStatusPesan(String statusPesan) {
        this.statusPesan = statusPesan;
    }

    /**
     * @return the tanggal
     */
    public Date getTanggal() {
        return tanggal;
    }

    /**
     * @param tanggal the tanggal to set
     */
    public void setTanggal(Date tanggal) {
        this.tanggal = tanggal;
    }
    
    
}
