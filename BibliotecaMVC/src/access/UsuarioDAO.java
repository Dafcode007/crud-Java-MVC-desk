
package access;

import com.mysql.cj.xdevapi.PreparableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.UsuarioModel;
import utils.ConnectionDB;

/**
 *
 * @author dafma
 */
public class UsuarioDAO extends ConnectionDB{
    public boolean registrar(UsuarioModel usu){
        PreparedStatement ps = null;
        Connection conn = getConnection();
        
        String sql = "INSERT INTO usuario (usu_username, usu_nombres, usu_apellidos, usu_email, usu_celular, usu_clave, usu_fecha_nacimiento) VALUES(?, ?, ?, ?, ?, ?, ?)";
        
        try{
            ps = conn.prepareStatement(sql);
            ps.setString(1, usu.getUsuUsername());
            ps.setString(2, usu.getUsuNombres());
            ps.setString(3, usu.getUsuApellidos());
            ps.setString(4, usu.getUsuEmail());
            ps.setInt(5, usu.getUsuCelular());
            ps.setString(6, usu.getUsuClave());
            ps.setString(7, usu.getUsuFechaNacimiento());
            ps.execute();
            return true;
            
            
        } catch(SQLException e){
            System.err.println(e);
            return false;
        } finally{
            try{
                conn.close();
            } catch (SQLException e){
                System.err.println(e);
            }
        }
    }
    
    public boolean modificar(UsuarioModel usu){
        PreparedStatement ps = null;
        Connection conn = getConnection();
        
        String sql = "UPDATE usuario SET usu_nombres = ?, usu_apellidos = ?, usu_email = ?, usu_celular = ?, usu_clave = ?, usu_fecha_nacimiento = ? WHERE usu_username = ?";
        
        try{
            ps = conn.prepareStatement(sql);
            ps.setString(1, usu.getUsuNombres());
            ps.setString(2, usu.getUsuApellidos());
            ps.setString(3, usu.getUsuEmail());
            ps.setInt(4, usu.getUsuCelular());
            ps.setString(5, usu.getUsuClave());
            ps.setString(6, usu.getUsuFechaNacimiento());
            ps.setString(7, usu.getUsuUsername());
            ps.execute();
            return true;
            
            
        } catch(SQLException e){
            System.err.println(e);
            return false;
        } finally{
            try{
                conn.close();
            } catch (SQLException e){
                System.err.println(e);
            }
        }
    }
    
    
    public boolean eliminar(UsuarioModel usu){
        PreparedStatement ps = null;
        Connection conn = getConnection();
        
        String sql = "DELETE FROM usuario WHERE usu_username = ?";
        
        try{
            ps = conn.prepareStatement(sql);
            ps.setString(1, usu.getUsuUsername());
            ps.execute();
            return true;
            
            
        } catch(SQLException e){
            System.err.println(e);
            return false;
        } finally{
            try{
                conn.close();
            } catch (SQLException e){
                System.err.println(e);
            }
        }
    }
    
     public boolean buscar(UsuarioModel usu){
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection conn = getConnection();
        
        String sql = "SELECT * FROM usuario WHERE usu_username = ?";
        
        try{
            ps = conn.prepareStatement(sql);
            ps.setString(1, usu.getUsuUsername());
            rs = ps.executeQuery();
            
            if (rs.next()) {
                usu.setUsuNombres(rs.getString("usu_nombres"));
                usu.setUsuApellidos(rs.getString("usu_apellidos"));
                usu.setUsuEmail(rs.getString("usu_email"));
                usu.setUsuCelular(Integer.parseInt(rs.getString("usu_celular")));
                usu.setUsuClave(rs.getString("usu_clave"));
                usu.setUsuFechaNacimiento(rs.getString("usu_fecha_nacimiento"));
                return true;
            }
            
            return false;
            
            
        } catch(SQLException e){
            System.err.println(e);
            return false;
        } finally{
            try{
                conn.close();
            } catch (SQLException e){
                System.err.println(e);
            }
        }
    }
}

