package Database;

/**
 * Created by Mahnoor on 11/7/2017.
 */
        import java.sql.Connection;
        import java.sql.DriverManager;
        import java.sql.SQLException;
        import java.util.logging.Level;
        import java.util.logging.Logger;

public class db_connection {

    public static Connection con;
    static String url;
    static {
        try {

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            //jdbc:sqlserver://DESKTOP-ND03B50\\SQLEXPRESS;databaseName=webpro;integratedSecurity=true
            con = DriverManager.getConnection("jdbc:sqlserver://DESKTOP-IQCHU3S\\SQLEXPRESS:1433;databaseName=db;user=sana;password=sana;");

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {

    }
}
