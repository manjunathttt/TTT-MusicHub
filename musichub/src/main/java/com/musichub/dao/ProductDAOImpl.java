package com.musichub.dao;


import java.util.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.musichub.model.Customer;
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
	    /*public ModelExmp getProductById(String id)
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
	    }*/
	    public ModelExmp getProductById(String pid) 
	    {
	            Session session = this.sessionFactory.getCurrentSession();      
	            ModelExmp m = (ModelExmp) session.get(ModelExmp.class, pid);
	            return m;
	     }
	    public void insertRow(ModelExmp me) 
	    {  
	    	  System.out.println("in name dao"+me.getName());
	    	  Session session = sessionFactory.openSession();  
	    	 
	    	  session.save(me);  
	    	  session.flush();
	    	  session.close();  
	    }
	    public void addCus(Customer c)
	    {
	    	System.out.println("in name dao"+c.getCusAdd());
	    	  Session session = sessionFactory.openSession();  
	    	 
	    	  session.save(c);  
	    	  session.flush();
	    	  session.close(); 
	    }
	    public void updateRow(ModelExmp me) 
	    {  
	    	  Session session = sessionFactory.openSession();  
	    	  session.saveOrUpdate(me);
	    	  session.flush();
	    }  
	    public void deleteRow(String id) 
	    {  
	    	Session session = sessionFactory.openSession();  
	     	ModelExmp me = (ModelExmp) session.load(ModelExmp.class, id);  
	     	session.delete(me); 
	     	session.flush();
	     	session.close();    
	    } 
}