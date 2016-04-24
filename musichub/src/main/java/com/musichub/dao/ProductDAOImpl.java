package com.musichub.dao;

import java.io.Serializable;
import java.util.*;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.Transaction;


import com.musichub.model.ModelExmp;

@Transactional
@Repository
public class ProductDAOImpl 
{
	List<ModelExmp> p = new ArrayList<ModelExmp>();
	
	public ProductDAOImpl() 
	    {
	        //p = new ArrayList<ModelExmp>();
	        
	        //p.add(new ModelExmp("GUITAR","201","9522","NEW","NEW PROD"));
	        //p.add(new ModelExmp("PIANO","202","8451","OLD","OLD PROD"));
	        //p.add(new ModelExmp("VIOLIN","203","7451","NEW","NEW PROD"));
	    }
		@Autowired
		private SessionFactory sessionFactory;
	    public List<ModelExmp> showValues()
	    {
	    	Session session = sessionFactory.getCurrentSession();  
	    	org.hibernate.Query q = session.createQuery("from ModelExmp");
	    	p = q.list();
	    	return p;
	    }
	    public ModelExmp getProductById(String id)
	    {
	    	
	    	ModelExmp m = null;
	    	for(ModelExmp me:p)
	    	{
	    		if(me.getId().equals(id))
	    		{
	    			m = new ModelExmp(me.getId(),me.getName(),me.getPrice(),me.getCondition(),me.getDescription());
	    		}
	    	}
	    	return m;	    	
	    }
	    public int insertRow(ModelExmp me) 
	    {  
	    	  Session session = sessionFactory.openSession();  
	    	  Transaction tx = session.beginTransaction(); 
	    	    
	    	  session.saveOrUpdate(me);  
	    	  tx.commit();  
	    	  Serializable id = session.getIdentifier(me);
	    	  session.close();  
	    	  return (Integer) id;  
	    }
	    public int updateRow(ModelExmp me) 
	    {  
	    	  Session session = sessionFactory.openSession();  
	    	  Transaction tx = session.beginTransaction();  
	    	   
	    	  session.saveOrUpdate(me);  
	    	  tx.commit();  
	    	  Serializable id = session.getIdentifier(me);
	    	  session.close();  
	    	  return (Integer) id;  
	    }  
	    public int deleteRow(String id) 
	    {  
	     Session session = sessionFactory.openSession();  
	     Transaction tx = session.beginTransaction();  
	    
	     ModelExmp me = (ModelExmp) session.load(ModelExmp.class, id);  
	     
		session.delete(me);  
	     tx.commit();  
	     Serializable ids = session.getIdentifier(me);
	     session.close();  
	     return (Integer) ids;  
	    } 
}