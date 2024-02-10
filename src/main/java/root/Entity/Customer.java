package root.Entity;

import root.Enum.Gender;
import root.Enum.Membership;

import java.sql.Date;

public class Customer extends User {
    private int rentals;
    private int rentalsLimit;
    private Membership membership;

    public Customer() {
        super();
    }

    public Customer(int id, String name, String email, String mobile, Gender gender, Date dateOfBirth, String address, String city, String state, String salt, String password, String hash, String profileImage, int rentals, int rentalsLimit, Membership membership) {
        super(id, name, email, mobile, gender, dateOfBirth, address, city, state, salt, password, hash, profileImage);
        this.rentals = rentals;
        this.rentalsLimit = rentalsLimit;
        this.membership = membership;
    }

    public int getRentals() {
        return rentals;
    }

    public void setRentals(int rentals) {
        this.rentals = rentals;
    }

    public int getRentalsLimit() {
        return rentalsLimit;
    }

    public void setRentalsLimit(int rentalsLimit) {
        this.rentalsLimit = rentalsLimit;
    }

    public Membership getMembership() {
        return membership;
    }

    public void setMembership(Membership membership) {
        this.membership = membership;
    }
}
