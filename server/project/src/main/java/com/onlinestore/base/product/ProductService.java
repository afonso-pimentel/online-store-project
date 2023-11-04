package com.onlinestore.base.product;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface ProductService {

    List<Product> getAllProducts();

    Product getProductById(Long id);

    Product createProduct(Product product);

    Product updateProduct(Long id, Product product);

    void deleteProduct(Long id);
}
