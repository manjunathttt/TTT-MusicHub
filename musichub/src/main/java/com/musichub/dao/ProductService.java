package com.musichub.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

public int insertRow(ModelExmp me) {  
  return pdi.insertRow(me);  
 } 

  
 public int updateRow(ModelExmp me) {  
  return pdi.updateRow(me);  
 }  
  

 public int deleteRow(String id) {  
  return pdi.deleteRow(id);  
 } 
}