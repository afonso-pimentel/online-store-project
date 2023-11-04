package com.onlinestore.base.order;

import java.util.List;

import org.springframework.stereotype.Service;

import com.onlinestore.base.exceptions.ResourceNotFoundException;

@Service
public class OrderServiceImpl implements OrderService{

    private final OrderRepository orderRepository;

    /**
     * @param orderRepository
     */
    public OrderServiceImpl(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

    @Override
    public List<Order> getAllOrders() {
        return orderRepository.findAll();    
    }

    @Override
    public Order getOrderById(Long id) {
        return orderRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Order not found with id " + id));
    }

    @Override
    public Order createOrder(Order order) {
        return orderRepository.save(order);
    }

    @Override
    public Order updateOrder(Long id, Order orderDetails) {
        Order order = getOrderById(id);

        order.setOrderItems(orderDetails.getOrderItems());
        order.setCustomer(orderDetails.getCustomer());
        order.setStatus(orderDetails.getStatus());
        order.setTotalPrice(orderDetails.getTotalPrice());

        return orderRepository.save(order);
    }

    @Override
    public void deleteOrder(Long id) {
        Order order = getOrderById(id);
        orderRepository.delete(order);
    }
    
}
