/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mich
 */
public class UserModel {
    private static Connection connection = null;
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
    
    public void insertPemilikKos(PemilikKos pk) throws SQLException {
        PreparedStatement stmt = null;
        try {
            connection.setAutoCommit(false);
            String query = "insert into pemilikKos values (?,?,?,?,?)";
            stmt = connection.prepareStatement(query);
            stmt.setString(1, pk.getIdPemilik());
            stmt.setString(2, pk.getNamaPemilik());
            stmt.setString(3, pk.getAlamatPemilik());
            stmt.setString(4, pk.getNoTelp());
            stmt.setString(5, pk.getPassword());
            stmt.executeUpdate();
            connection.commit();
        } catch (SQLException se) {
            connection.rollback();
            throw se;
        } finally {
            try {
                connection.setAutoCommit(true);
                if (stmt != null) {
                    stmt.close();
                }
            } catch (Exception e) {
                try {
                    throw e;
                } catch (Exception ex) {
                    Logger.getLogger(UserModel.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }
    
    public String getKodePemilikBaru() throws SQLException {
        ResultSet rset = null;
        String tangkepID=null;
        
        String sql = "SELECT MAX(idpemilik) FROM PemilikKos";
        Statement stat = connection.createStatement();

        rset = stat.executeQuery(sql);
        while (rset.next()) {
            tangkepID = rset.getString(1);
        }
        connection.close();
        return tangkepID;
    }
}
