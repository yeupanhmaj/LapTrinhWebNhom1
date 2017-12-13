package connect;

import java.sql.Connection;
import java.sql.SQLException;

public class ConnectionUtil {
	public static Connection getConnection() 
            throws ClassNotFoundException, SQLException {

      // Ở đây tôi kết nối tới Oracle Database.
      // (Bạn có thể thay đổi sử dụng database khác).
      //return OracleConnUtils.getOracleConnection();
       
      // return OracleConnUtils.getOracleConnection();
       return GetConnect.getMySQLConnection();
      // return SQLServerConnUtils_JTDS.getSQLServerConnection_JTDS();
      // return SQLServerConnUtils_SQLJDBC.getSQLServerConnection_SQLJDBC();
      // return PostGresConnUtils.getPostGresConnection();
  }
   
  public static void closeQuietly(Connection conn) {
      try {
          conn.close();
      } catch (Exception e) {
      }
  }

  public static void rollbackQuietly(Connection conn) {
      try {
          conn.rollback();
      } catch (Exception e) {
      }
  }
}
