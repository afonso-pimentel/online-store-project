package com.onlinestore.base.order;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface OrderService {
    
    List<Order> getAllOrders();

    Order getOrderById(Long id);

    Order createOrder(Order order);

    Order updateOrder(Long id, Order order);

    void deleteOrder(Long id);
}
