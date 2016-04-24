package dao;
import java.util.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

//import model.ModelExmp;
import model.ModelExmp;

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
	    	Session session = sessionFactory.getCurrentSession();
	           
	    	ModelExmp me=new ModelExmp();
            me=(ModelExmp) session.get(ModelExmp.class, new String(id));
	    	/*for(ModelExmp me:p)
	    	{
	    		if(me.getId().equals(id))
	    		{
	    			m = new ModelExmp(me.getId(),me.getName(),me.getPrice(),me.getCondition(),me.getDescription());
	    		}
	    	}
	    	return me;
	    	
	    }*/
}
