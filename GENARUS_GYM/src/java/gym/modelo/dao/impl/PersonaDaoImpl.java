package gym.modelo.dao.impl;

import gym.modelo.dao.PersonaDao;
import gym.modelo.entidad.ContratoCliente;
import gym.modelo.entidad.Persona;
import gym.modelo.entidad.TipoContrato;
import gym.modelo.util.HibernateUtil;
import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author chasse2
 */
public class PersonaDaoImpl implements PersonaDao {

    public Connection abrirConexion() {
        return gym.modelo.util.ConexionOracle.conectar();
    }

    @Override
    public boolean agregarPersona(Persona persona) {
        boolean estado = false;
        Statement st = null;
        String query = "INSERT INTO persona (id_persona,nombre,apellidos,dni,sexo,telefono,direccion) VALUES ('','" + persona.getNombre() + "','" + persona.getApellidos() + "','" + persona.getDni() + "','" + persona.getSexo() + "', '" + persona.getTelefono() + "','" + persona.getDireccion() + "')";
        try {
            st = abrirConexion().createStatement();
            st.executeQuery(query);
            abrirConexion().commit(); //commit();
            abrirConexion().close();//cerrar la conexion
            estado = true;
        } catch (Exception e) {
            e.printStackTrace();
            estado = false;
            try {
                abrirConexion().rollback();
                abrirConexion().close();
            } catch (Exception ex) {
            }
        }
        return estado;
    }

    @Override
    public List<Persona> listarPersona() {
        List<Persona> lista = null;
        SessionFactory sf = null;
        Session session = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            lista = new ArrayList<Persona>();
            Query query = session.createQuery("FROM Persona");
            lista = query.list();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
            session.close();
        }
        return lista;
    }

    @Override
    public boolean eliminarPersona(String id_persona) {
        boolean estado = false;
        Statement st = null;
        String query = "delete from persona where id_persona="+id_persona;
        System.out.println(query);
        try {
            st = abrirConexion().createStatement();
            st.executeUpdate(query);
            abrirConexion().commit();
            abrirConexion().close();
            estado = true;
        } catch (Exception e) {
            e.printStackTrace();
            estado = false;
            try {
                abrirConexion().rollback();
                abrirConexion().close();
            } catch (Exception ex) {
            }
        }
        return estado;
    }

    @Override
    public boolean actualizarPersona(Persona persona) {
        boolean estado = false;
        Statement st = null;
        String query = "UPDATE persona SET nombre='" + persona.getNombre() + "',"
                + " apellidos='" + persona.getApellidos() + "',  "
                + " dni='" + persona.getDni() + "', "
                + " sexo='" + persona.getSexo() + "', "
                + " telefono='" + persona.getTelefono() + "', "
                + " direccion='" + persona.getDireccion() + "' "
                + " where id_persona='" + persona.getIdPersona() + "' ";

        try {
            st = abrirConexion().createStatement();
            st.executeUpdate(query);
            abrirConexion().commit();
            abrirConexion().close();
            estado = true;
        } catch (Exception e) {
            e.printStackTrace();
            estado = false;
            try {
                abrirConexion().rollback();
                abrirConexion().close();
            } catch (Exception ex) {
            }
        }
        return estado;
    }

    @Override
    public ContratoCliente buscarContratoCliente(String dni) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.

    }

    @Override
    public boolean registrarContratoCliente(ContratoCliente contratoCliente) {
       
        boolean flat = false;
        
        return flat;
    }

    @Override
    public List<TipoContrato> listarTipoContraro() {
        List<TipoContrato> lista = null;
        SessionFactory sf = null;
        Session session = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            lista = new ArrayList<TipoContrato>();
            Query query = session.createQuery("FROM tipo_contrato");
            lista = query.list();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
            session.close();
        }
        return lista;
    }

    @Override
    public Persona buscarId(String id_persona) {
        Persona persona = null;
        SessionFactory sf = null;
        Session session = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            Query query = session.createQuery("from Persona where idPersona='"+id_persona+"'");
            persona = (Persona)query.uniqueResult();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
            session.close();
        }
        return persona;
    }

    @Override
    public Persona buscarPersona(String dni) {
        Persona persona = null;
        SessionFactory sf = null;
        Session session = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            Query query = session.createQuery("from Persona where dni='"+dni+"'");
            persona = (Persona)query.uniqueResult();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
            session.close();
        }
        return persona;
        
    }
    }
    