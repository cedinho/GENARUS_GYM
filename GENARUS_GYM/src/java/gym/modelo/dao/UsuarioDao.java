/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gym.modelo.dao;

import gym.modelo.entidad.Usuario;

/**
 *
 * @author chasse2
 */
public interface UsuarioDao {
    
    public Usuario validarUsuario(String usuario, String password);
    public boolean  agregarUsuario(Usuario usuario);
    
}
