package com.niit.music.service.impl;

import com.niit.music.dao.ProductDao;
import com.niit.music.model.Product;
import com.niit.music.service.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Le on 1/24/2016.
 */

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;

    public Product getProductById (int productId) {
        return productDao.getProductById(productId);
    }

    public List<Product> getProductList () {
        return productDao.getProductList();
    }

    public void addProduct(Product product) {
        productDao.addProduct(product);
    }

    public void editProduct(Product product) {
        productDao.editProduct(product);
    }

    public void deleteProduct(Product product) {
        productDao.deleteProduct(product);
    }
}
