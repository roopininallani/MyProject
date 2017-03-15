package com.niit.music.service.impl;

import com.niit.music.dao.CartDao;
import com.niit.music.model.Cart;
import com.niit.music.service.CartService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Le on 1/25/2016.
 */

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartDao cartDao;

    public Cart getCartById(int cartId) {
        return cartDao.getCartById(cartId);
    }

    public void update(Cart cart) {
        cartDao.update(cart);
    }
}
