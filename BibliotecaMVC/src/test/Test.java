
package test;

import access.UsuarioDAO;
import controller.CtrlUsuario;
import model.UsuarioModel;

import view.formUser;

/**
 *
 * @author dafma
 */
public class Test {
     public static void main(String[] args){
        UsuarioModel u = new UsuarioModel(); 
        UsuarioDAO uDAO = new UsuarioDAO();
        formUser f = new formUser();
        
        CtrlUsuario ctrl = new CtrlUsuario(u, uDAO, f);
        ctrl.iniciar();
        f.setVisible(true);
        
     }
}
