package com.onlinestore.base.customer;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public interface CustomerService {

    List<Customer> getAllCustomers();

    Customer getCustomerById(Long id);

    Customer createCustomer(Customer customer);

    Customer updateCustomer(Long id, Customer customer);

    Customer updateCustomerPartially(Long id, Map<String, Object> updates);

    void deleteCustomer(Long id);
}
