package com.musichub.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.musichub.dao.CardDetailDao;
import com.musichub.model.CardDetail;

@Service
public class CardDetailServiceImpl implements CardDetailService
{
	@Autowired
    private CardDetailDao cardDetailDao;

    public void addCardDetail (CardDetail cardDetail) {
    	cardDetailDao.addCardDetail(cardDetail);
    }
}
