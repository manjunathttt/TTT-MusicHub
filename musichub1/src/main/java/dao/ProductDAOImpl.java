package dao;
import java.util.ArrayList;
import java.util.List;
import model.ModelExmp;
public class ProductDAOImpl 
{
	List<ModelExmp> p;
	public ProductDAOImpl() 
	    {
	        p = new ArrayList<ModelExmp>();
	        
	        p.add(new ModelExmp("GUITAR","201","9522","NEW","NEW PROD"));
	        p.add(new ModelExmp("PIANO","202","8451","OLD","OLD PROD"));
	        p.add(new ModelExmp("VIOLIN","203","7451","NEW","NEW PROD"));
	    }
	     
	    public List<ModelExmp> getAll()
	    {
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
}
