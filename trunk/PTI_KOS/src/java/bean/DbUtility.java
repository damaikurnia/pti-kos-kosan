package bean;


import com.mysql.jdbc.Statement;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author ahza
 */
public class DbUtility {

    Connection connection = null;
    String url = "jdbc:mysql://localhost:3306/kos";
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

    public static void main(String args[]) {
        DbUtility conn = new DbUtility();
        try {
            String query = "select * from pemilikkos";
            Statement statement = (Statement) conn.getConnection().createStatement();
            ResultSet result = statement.executeQuery(query);

            while (result.next()) {
                System.out.println("userName : " + result.getString("idpemilik"));
                System.out.println("Password  : " + result.getString("password"));
               
            }
            statement.close();
        } catch (Exception ex) {
            System.out.println("message: " + ex.getMessage());
        }

    }
}

