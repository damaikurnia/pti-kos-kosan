/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author Mich
 */
public class SMS {
    private String idSMS;
    private String isiPesan;

    /**
     * @return the idSMS
     */
    
    public SMS(){}
    
    public SMS(String id, String isiSMS){
        idSMS = id;
        isiPesan = isiSMS;
    }
    
    public String getIdSMS() {
        return idSMS;
    }

    /**
     * @param idSMS the idSMS to set
     */
    public void setIdSMS(String idSMS) {
        this.idSMS = idSMS;
    }

    /**
     * @return the isiPesan
     */
    public String getIsiPesan() {
        return isiPesan;
    }

    /**
     * @param isiPesan the isiPesan to set
     */
    public void setIsiPesan(String isiPesan) {
        this.isiPesan = isiPesan;
    }
    
    
}
