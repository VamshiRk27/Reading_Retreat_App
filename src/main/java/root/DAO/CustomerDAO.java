package root.DAO;

import root.Entity.Customer;

public interface CustomerDAO {
    public boolean checkExistingCustomer(String customerEmail);

    public Customer getCustomer(String customerEmail);

    public boolean registerCustomer(Customer customer);
}
