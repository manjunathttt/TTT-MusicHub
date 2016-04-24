package com.musichub.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

//import com.musichub.model.Customer;
import com.musichub.model.ModelExmp;

@Service
@Transactional
public class ProductService 
{
	@Autowired
    private ProductDAOImpl pdi;
   
    public List<ModelExmp> getAll()
    {
          return pdi.showValues();
    }
   public ModelExmp getProductById(String id)
    {
         return pdi.getProductById(id);
    }

public void insertRow(ModelExmp me) {  
  pdi.insertRow(me);  
 } 


 public void updateRow(ModelExmp me) {  
  pdi.updateRow(me);  
 }  
  

 public void deleteRow(String id) {  
  pdi.deleteRow(id);  
 } 
}