/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package consola;

import gym.modelo.dao.PersonaDao;
import gym.modelo.dao.UsuarioDao;
import gym.modelo.dao.impl.PersonaDaoImpl;
import gym.modelo.dao.impl.UsuarioDaoImpl;
import gym.modelo.entidad.Persona;
import gym.modelo.entidad.Usuario;

/**
 *
 * @author chasse2
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
         Main main = new Main();
         main.eliminaPersona();
    }
       public void eliminaPersona(){
        
        PersonaDao dao = new PersonaDaoImpl();
        
        if (dao.eliminarPersona("0003")) {
            System.out.println("Se elimino correctamente");
            
        } else {
             System.out.println("Ocurrio un error");
        }


   }
}
