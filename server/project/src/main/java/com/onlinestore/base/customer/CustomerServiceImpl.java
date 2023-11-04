package com.onlinestore.base.customer;

import java.lang.reflect.Field;
import java.util.List;
import java.util.Map;

import org.springframework.data.util.ReflectionUtils;
import org.springframework.stereotype.Service;

import com.onlinestore.base.exceptions.ResourceNotFoundException;

@Service
public class CustomerServiceImpl implements CustomerService{

    private final CustomerRepository customerRepository;
    
    public CustomerServiceImpl(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    @Override
    public List<Customer> getAllCustomers() {
        return customerRepository.findAll();
    }

    @Override
    public Customer getCustomerById(Long id) {
        return customerRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Customer not found with id " + id));
    }

    @Override
    public Customer createCustomer(Customer customer) {
        return customerRepository.save(customer);
    }

    @Override
    public Customer updateCustomer(Long id, Customer customerDetails) {
        Customer customer = getCustomerById(id);
        customer.setName(customerDetails.getName());
        customer.setEmail(customerDetails.getEmail());
        customer.setAddress(customerDetails.getAddress());
        // Update other fields as needed
        return customerRepository.save(customer);
    }

    @Override
    public Customer updateCustomerPartially(Long id, Map<String, Object> updates) {
        Customer customer = customerRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Customer not found with id " + id));
        
        // Apply changes to the customer object
        updates.forEach((key, value) -> {
            // Use reflection to get field k on customer and set it to value v
            Field field = ReflectionUtils.findRequiredField(Customer.class, key);
            if (field != null) {
                field.setAccessible(true);
                ReflectionUtils.setField(field, customer, value);
            }
            // Note: Handle type conversion and invalid field names as necessary
        });
        
        // Save the customer after the partial update
        return customerRepository.save(customer);
    }
        

    @Override
    public void deleteCustomer(Long id) {
        customerRepository.deleteById(id);
    }


    
}
