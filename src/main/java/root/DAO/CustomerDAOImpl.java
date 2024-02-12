package root.DAO;

import root.Entity.Customer;
import root.Helper.CustomerHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CustomerDAOImpl implements CustomerDAO {

    private Connection connection;

    public CustomerDAOImpl(Connection connection) {
        this.connection = connection;
    }

    @Override
    public boolean checkExistingCustomer(String customerEmail) {
        boolean status = false;
        String query = "SELECT * FROM customer WHERE email=?";
        ResultSet rs = null;
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(query);
            statement.setString(1, customerEmail);
            rs = statement.executeQuery();
            if (rs.next()) {
                status = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Always a better practice to implement finally & close objects
            try {
                if (rs != null) {
                    rs.close();
                }
                if (statement != null) {
                    statement.close();
                }
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return status;
    }


    @Override
    public Customer getCustomer(String customerEmail) {
        Customer customer = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        String query = "SELECT * FROM customer WHERE email=?";
        try {
            statement = connection.prepareStatement(query);
            statement.setString(1, customerEmail);

            rs = statement.executeQuery(query);
            while (rs.next()) {
                customer = CustomerHelper.getCustomerFromResultSet(rs);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (statement != null) {
                    statement.close();
                }
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return customer;
    }


    public boolean registerCustomer(Customer customer) {
        boolean registrationStatus = false;
        String query = "INSERT INTO customer(name,email,mobile,gender,dateOfBirth,address,city,state,image,salt,password,hash,membership,rentals,rentalLimit,registeredDate) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            CustomerHelper.setStatementFromCustomer(statement, customer);
            int rowsAffected = statement.executeUpdate();
            if (rowsAffected == 1) {
                registrationStatus = true;
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return registrationStatus;
    }
}
