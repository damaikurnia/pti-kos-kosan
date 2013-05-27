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
    PemilikKos pk = new PemilikKos();

    public UserModel() {
        connection = new DbUtility().getConnection();
    }

//    public void insertKos(String IdKos, String IdPemilik, String NamaKos, String AlamatKos, String Fasilitas, String GoogleMaps, String Status, String Kategori, String Harga) {
//        try {
//            PreparedStatement statement = null;
//
//            String query = "INSERT INTO kos values('" + IdKos + "', '" + IdPemilik + "', '"
//                    + NamaKos + "', '" + AlamatKos + "', '" + Fasilitas +"', '" + GoogleMaps + "', '"
//                    + Status + "', '" + Kategori + "', '" + Harga +"')";
//            statement = connection.prepareStatement(query);
//            statement.executeUpdate(query);
//        } catch (SQLException ex) {
//            Logger.getLogger(UserModel.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
    public void insertKos(Kos k) throws SQLException {
        PreparedStatement stmt = null;
        try {
            connection.setAutoCommit(false);
            String query = "insert into Kos values (?,?,?,?,?,?,?,?,?)";
            stmt = connection.prepareStatement(query);
            stmt.setString(1, k.getIdKos());
            stmt.setString(2, k.getIdpemilik().getIdPemilik());
            stmt.setString(3, k.getNamaKos());
            stmt.setString(4, k.getAlamatKos());
            stmt.setString(5, k.getFasilitas());
            stmt.setString(6, k.getGoogleMaps());
            stmt.setString(7, k.getStatusKos());
            stmt.setString(8, k.getKategori());
            stmt.setString(9, k.getHarga());

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

    public String getKodeKosBaru() throws SQLException {
        ResultSet rset = null;
        String tangkepID = null;

        String sql = "SELECT MAX(idKos) FROM Kos";
        Statement stat = connection.createStatement();

        rset = stat.executeQuery(sql);
        while (rset.next()) {
            tangkepID = rset.getString(1);
        }
        connection.close();
        return tangkepID;
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

    public ResultSet searchKosID(String id) throws SQLException {
        PreparedStatement statement = null;
        String query = "select * from kos where idKos='"
                + id + "';";
        statement = connection.prepareStatement(query);
        ResultSet result = statement.executeQuery(query);
        return result;
    }
    
    public ResultSet deleteKos(String id) throws SQLException {
        PreparedStatement statement = null;
        String query = "delete from kos where idKos='"
                + id + "';";
        statement = connection.prepareStatement(query);
        ResultSet result = statement.executeQuery(query);
        return result;
    }
    
     public ResultSet searchPemilikKosID(String id) throws SQLException {
        PreparedStatement statement = null;
        String query = "select * from pemilikKos where idPemilik='"
                + id + "';";
        statement = connection.prepareStatement(query);
        ResultSet result = statement.executeQuery(query);
        return result;
    }
     
     public ResultSet searchNamaKos(String namaKos) throws SQLException {
        PreparedStatement statement = null;
        String query = "select * from kos where namaKos='"
                + namaKos + "';";
        statement = connection.prepareStatement(query);
        ResultSet result = statement.executeQuery(query);
        return result;
    }

    public String getKodePemilikBaru() throws SQLException {
        ResultSet rset = null;
        String tangkepID = null;

        String sql = "SELECT MAX(idpemilik) FROM PemilikKos";
        Statement stat = connection.createStatement();

        rset = stat.executeQuery(sql);
        while (rset.next()) {
            tangkepID = rset.getString(1);
        }
        connection.close();
        return tangkepID;
    }

    public PemilikKos getPemilikKos(String idpemilik, String psw) {
        String selectSql = "SELECT * FROM pemilikkos WHERE idpemilik=? AND password=?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(selectSql);
            statement.setString(1, idpemilik);
            statement.setString(2, psw);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                pk = new PemilikKos();
                pk.setIdPemilik(rs.getString(1));
                pk.setPassword(rs.getString(4));//sssss
                pk.setPassword("");
            }
        } catch (SQLException e) {
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (Exception e) {
                }
            }
        }
        return pk;
    }
    
//     public ResultSet OtomatisIdPemilik() throws SQLException {
//        PreparedStatement statement = null;
//        String query = "select idPemilik from pemilikKos";
////        String query = "select * from petugas where username like '" + userName + "'";
//        statement = connection.prepareStatement(query);
//        ResultSet result = statement.executeQuery(query);
//        return result;
//    }
     
     public void UpdateKos(String idKos, String idPemilik, String namaKos, String alamatKos, String fasilitas, String googleMaps, String statusKos, String kategori, String harga) {
        try {
            PreparedStatement statement = null;

            String query = "update kos set namaKos='" + namaKos + "', alamatKos='"
                    + alamatKos + "', fasilitas='" + fasilitas + "', googleMaps='"
                    + googleMaps + "', statusKos='" + statusKos + "', kategori='"
                    + kategori + "', harga='" + harga + "' where idKos='" + idKos + "'";
            statement = connection.prepareStatement(query);
            statement.executeUpdate(query);
        } catch (SQLException ex) {
            Logger.getLogger(UserModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     
     public ResultSet tampilSemuaKos() throws SQLException {
        PreparedStatement statement = null;
        String query = "select * from kos";
        statement = connection.prepareStatement(query);
        ResultSet result = statement.executeQuery(query);
        return result;
    }
}
