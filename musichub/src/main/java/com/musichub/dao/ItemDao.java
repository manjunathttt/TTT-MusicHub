package com.musichub.dao;

import java.util.List;

import com.musichub.model.Item;

public interface ItemDao 
{
	List<Item> getItemList();

    Item getItemById(int id);

    void addItem(Item item);

    void editItem(Item item);

    void deleteItem(Item item);
}
