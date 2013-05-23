/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author wieranata
 */
public class UserModel {
    Connection connection = null;
    PemilikKos pk = new PemilikKos();
    Kos kos = new Kos();
    
    public UserModel() {
        connection = new DbUtility().getConnection();
    }
    
    public void insertKos(String IdKos, String IdPemilik, String NamaKos, String AlamatKos, String Fasilitas, String GoogleMaps, String Status, String Kategori, String Harga) {
        try {
            PreparedStatement statement = null;

            String query = "INSERT INTO kos values('" + IdKos + "', '" + IdPemilik + "', '"
                    + NamaKos + "', '" + AlamatKos + "', '" + Fasilitas +"', '" + GoogleMaps + "', '"
                    + Status + "', '" + Kategori + "', '" + Harga +"')";
            statement = connection.prepareStatement(query);
            statement.executeUpdate(query);
        } catch (SQLException ex) {
            Logger.getLogger(UserModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
