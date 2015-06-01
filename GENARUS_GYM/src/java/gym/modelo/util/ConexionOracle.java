/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gym.modelo.util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author chasse2
 */
public class ConexionOracle {
    public static Connection conectar(){
        Connection conn = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection("jdbc:oracle:thin:@cedinho:1521:orcl","genarus","genarus");
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return conn;
}
}