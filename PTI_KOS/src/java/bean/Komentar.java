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
public class Komentar {
    private Kos idKos;
    private Pengunjung idPengunjung;
    private String komentar;
    private Date tanggal;

    /**
     * @return the idKos
     */
    public Kos getIdKos() {
        return idKos;
    }

    /**
     * @param idKos the idKos to set
     */
    public void setIdKos(Kos idKos) {
        this.idKos = idKos;
    }

    /**
     * @return the idPengunjung
     */
    public Pengunjung getIdPengunjung() {
        return idPengunjung;
    }

    /**
     * @param idPengunjung the idPengunjung to set
     */
    public void setIdPengunjung(Pengunjung idPengunjung) {
        this.idPengunjung = idPengunjung;
    }

    /**
     * @return the komentar
     */
    public String getKomentar() {
        return komentar;
    }

    /**
     * @param komentar the komentar to set
     */
    public void setKomentar(String komentar) {
        this.komentar = komentar;
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
