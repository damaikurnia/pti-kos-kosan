/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author Mich
 */
public class Kos {

    private String idKos;
    private String namaKos;
    private String alamatKos;
    private String Fasilitas;
    private String googleMaps;
    private String statusKos;
    private String harga;
    private String kategori;
    private PemilikKos idpemilik;

     public Kos(String idkos,String namakos,String alamatkos,String fasilitas,String googlemaps,String statuskos,String harga,String kategori, PemilikKos idpemilik ){
        this.idKos = idkos;
        this.namaKos = namakos;
        this.alamatKos = alamatkos;
        this.Fasilitas = fasilitas;
        this.googleMaps = googlemaps;
        this.statusKos = statuskos;
        this.harga = harga;
        this.idpemilik = idpemilik;
        this.kategori = kategori;
    }
    /**
     * @return the idKos
     */
    public String getIdKos() {
        return idKos;
    }

    /**
     * @param idKos the idKos to set
     */
    public void setIdKos(String idKos) {
        this.idKos = idKos;
    }

    /**
     * @return the namaKos
     */
    public String getNamaKos() {
        return namaKos;
    }

    /**
     * @param namaKos the namaKos to set
     */
    public void setNamaKos(String namaKos) {
        this.namaKos = namaKos;
    }

    /**
     * @return the alamatKos
     */
    public String getAlamatKos() {
        return alamatKos;
    }

    /**
     * @param alamatKos the alamatKos to set
     */
    public void setAlamatKos(String alamatKos) {
        this.alamatKos = alamatKos;
    }

    /**
     * @return the Fasilitas
     */
    public String getFasilitas() {
        return Fasilitas;
    }

    /**
     * @param Fasilitas the Fasilitas to set
     */
    public void setFasilitas(String Fasilitas) {
        this.Fasilitas = Fasilitas;
    }

    
    /**
     * @return the statusKos
     */
    public String getStatusKos() {
        return statusKos;
    }

    /**
     * @param statusKos the statusKos to set
     */
    public void setStatusKos(String statusKos) {
        this.statusKos = statusKos;
    }

    /**
     * @return the pemilik
     */

    /**
     * @return the harga
     */
    public String getHarga() {
        return harga;
    }

    /**
     * @param harga the harga to set
     */
    public void setHarga(String harga) {
        this.harga = harga;
    }

    /**
     * @return the googleMaps
     */
    public String getGoogleMaps() {
        return googleMaps;
    }

    /**
     * @param googleMaps the googleMaps to set
     */
    public void setGoogleMaps(String googleMaps) {
        this.googleMaps = googleMaps;
    }

    /**
     * @return the kategori
     */
    public String getKategori() {
        return kategori;
    }

    /**
     * @param kategori the kategori to set
     */
    public void setKategori(String kategori) {
        this.kategori = kategori;
    }

    /**
     * @return the idpemilik
     */
    public PemilikKos getIdpemilik() {
        return idpemilik;
    }

    /**
     * @param idpemilik the idpemilik to set
     */
    public void setIdpemilik(PemilikKos idpemilik) {
        this.idpemilik = idpemilik;
    }
}
