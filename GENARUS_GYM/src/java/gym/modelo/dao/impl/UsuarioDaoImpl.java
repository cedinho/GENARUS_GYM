/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gym.modelo.dao.impl;

import gym.modelo.dao.UsuarioDao;
import gym.modelo.entidad.Usuario;
import gym.modelo.util.HibernateUtil;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author chasse2
 */
public class UsuarioDaoImpl implements UsuarioDao{

    @Override
    public Usuario validarUsuario(String usuario, String password) {
       Usuario user = null;
        SessionFactory sf = null;
        Session session = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            Query query = session.createQuery("from Usuario where usuario='"+usuario+"' and password='"+password+"'");
            user = (Usuario)query.uniqueResult();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
          session.close();
        }
       return user;
    }

    @Override
    public boolean agregarUsuario(Usuario usuario) {
        boolean flat = false;
        SessionFactory sf= null;
        Session session = null;
        Transaction transaction = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            transaction = session.beginTransaction();
            session.save(usuario);
            usuario.getIdUsuario();
            transaction.commit();
            session.close();
            flat = true;
        } catch (Exception e) {
            e.printStackTrace();
            transaction.rollback();
            session.close();
            flat = false;
        }
        return flat;
    }
   
    
}
