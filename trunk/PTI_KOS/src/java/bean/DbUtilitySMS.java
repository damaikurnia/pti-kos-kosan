/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author Mich
 */
public class DbUtilitySMS {
    Connection connection = null;
    String url = "jdbc:mysql://localhost:3306/sms";
    String user = "root";
    String password = "";

    public Connection getConnection() {
        if (connection == null) {
            MysqlDataSource dataSource = new MysqlDataSource();
            dataSource.setUrl(url);
            dataSource.setUser(user);
            dataSource.setPassword(password);
            try {
                connection = dataSource.getConnection();
            } catch (SQLException e) {
                System.out.println("Koneksi mysql gagal! \n Error: " + e.getMessage());
            }
        }
        return connection;
    }
}
