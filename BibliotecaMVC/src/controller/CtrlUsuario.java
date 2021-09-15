
package controller;

import access.UsuarioDAO;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JOptionPane;
import model.UsuarioModel;
import view.formUser;

/**
 *
 * @author dafma
 */
public class CtrlUsuario implements ActionListener {
    private UsuarioModel usuMod;
    private UsuarioDAO usuDAO;
    private formUser form;
    
    public CtrlUsuario (UsuarioModel usuMod, UsuarioDAO usuDAO, formUser form){
        this.usuMod = usuMod;
        this.usuDAO = usuDAO;
        this.form = form;
        this.form.btnGuardar.addActionListener(this);
        this.form.btnModificar.addActionListener(this);
        this.form.btnEliminar.addActionListener(this);
        this.form.btnLimpiar.addActionListener(this);
        this.form.btnBuscar.addActionListener(this);
    }
    
    public void iniciar(){
        form.setTitle("Usuarios");
        form.setLocationRelativeTo(null);
        form.txtUsername.setVisible(true);
    }
    
    @Override
    public void actionPerformed(ActionEvent e){
        if(e.getSource() == form.btnGuardar){
            usuMod.setUsuUsername(form.txtUsername.getText());
            usuMod.setUsuNombres(form.txtNombre.getText());
            usuMod.setUsuApellidos(form.txtApellido.getText());
            usuMod.setUsuEmail(form.txtEmail.getText());
            usuMod.setUsuCelular(Integer.parseInt(form.txtCelular.getText()));
            usuMod.setUsuClave(form.txtClave.getText());
            usuMod.setUsuFechaNacimiento(form.txtFechaNacimiento.getText());
            
            if(usuDAO.registrar(usuMod)){
                JOptionPane.showMessageDialog(null, "Registro Guardado");
                limpiar();

            }else{
                JOptionPane.showMessageDialog(null, "Error al guardar");
                limpiar();
            }
        }
        
        
        if(e.getSource() == form.btnModificar){
            usuMod.setUsuUsername(form.txtUsername.getText());
            usuMod.setUsuNombres(form.txtNombre.getText());
            usuMod.setUsuApellidos(form.txtApellido.getText());
            usuMod.setUsuEmail(form.txtEmail.getText());
            usuMod.setUsuCelular(Integer.parseInt(form.txtCelular.getText()));
            usuMod.setUsuClave(form.txtClave.getText());
            usuMod.setUsuFechaNacimiento(form.txtFechaNacimiento.getText());
            
            if(usuDAO.modificar(usuMod)){
                JOptionPane.showMessageDialog(null, "Registro Modificado");
                limpiar();

            }else{
                JOptionPane.showMessageDialog(null, "Error al modificar");
                limpiar();
            }
        }
        
        
        if(e.getSource() == form.btnEliminar){
            usuMod.setUsuUsername(form.txtUsername.getText());
            if(usuDAO.eliminar(usuMod)){
                JOptionPane.showMessageDialog(null, "Registro eliminado");
                limpiar();

            }else{
                JOptionPane.showMessageDialog(null, "Error al eliminar");
                limpiar();
            }
        }
        
        
        if(e.getSource() == form.btnBuscar){
            usuMod.setUsuUsername(form.txtUsername.getText());
            if(usuDAO.buscar(usuMod)){
                form.txtNombre.setText(usuMod.getUsuNombres());
                form.txtApellido.setText(usuMod.getUsuApellidos());
                form.txtEmail.setText(usuMod.getUsuEmail());
                form.txtCelular.setText(String.valueOf(usuMod.getUsuCelular()));
                form.txtClave.setText(usuMod.getUsuClave());
                form.txtFechaNacimiento.setText(usuMod.getUsuFechaNacimiento());
                

            }else{
                JOptionPane.showMessageDialog(null, "No se encontro el registro");
                limpiar();
            }
        }
        
        if(e.getSource() == form.btnLimpiar){
            limpiar();
        }
    }
    
    public void limpiar(){
      form.txtUsername.setText(null);
      form.txtNombre.setText(null);
      form.txtApellido.setText(null);
      form.txtEmail.setText(null);
      form.txtCelular.setText(null);
      form.txtClave.setText(null);
      form.txtFechaNacimiento.setText(null);
      
    }
    
}
