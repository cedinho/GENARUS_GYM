/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gym.modelo.dao;


import gym.modelo.entidad.ContratoCliente;
import gym.modelo.entidad.Persona;
import gym.modelo.entidad.TipoContrato;
import java.util.List;

/**
 *
 * @author chasse2
 */
public interface PersonaDao {
    public boolean agregarPersona(Persona persona);
    public List<Persona> listarPersona();
    public List<TipoContrato> listarTipoContraro();
    public ContratoCliente buscarContratoCliente (String dni);
    public boolean registrarContratoCliente (ContratoCliente contratoCliente);
    public boolean eliminarPersona(String id_persona);
    public boolean actualizarPersona(Persona persona);
    public Persona buscarId(String id_persona);
    public Persona buscarPersona (String dni);
    
}
