package com.ecommerce.daoimpl;

import com.ecommerce.dao.UserDao;
import com.ecommerce.model.Order;
import com.ecommerce.model.User;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

public class UserDaoImpl implements UserDao {

    private JdbcTemplate jdbcTemplate;

    // This setter is required for the XML bean to work
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public void saveUser(User user) {
        String sql = "INSERT INTO users(name, email, password, phone) VALUES (?, ?, ?, ?)";
        jdbcTemplate.update(sql,
                user.getName(),
                user.getEmail(),
                user.getPassword(),
                user.getPhone());
    }
    
    @Override
    public User validateUser(String email, String password) {
        String sql = "SELECT * FROM users WHERE email=? AND password=?";
        try {
            return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), email, password);
        } catch (Exception e) {
            return null; 
        }
    }
    @Override
    public User findUserByEmail(String email) {
        // We trim and lowercase to make sure " Nara@gmail.com" matches "nara@gmail.com"
        String sql = "SELECT * FROM users WHERE LOWER(email) = LOWER(?)";
        try {
            return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), email.trim());
        } catch (Exception e) {
            // Log the error so you can see it in the console if something goes wrong
            System.out.println("Email not found: " + email);
            return null;
        }
    }
        @Override
        public void updateUser(User user) {
            // We use jdbcTemplate because that is what your project is configured with
            String sql = "UPDATE users SET password=? WHERE email=?";
            
            jdbcTemplate.update(sql, user.getPassword(), user.getEmail());
        }
        
        @Override
        public void saveOrder(Order order) {
            String sql = "INSERT INTO orders (user_email, product_name, price) VALUES (?, ?, ?)";
            jdbcTemplate.update(sql, order.getUserEmail(), order.getProductName(), order.getPrice());
        }
    
} // Final closing bracket for the class