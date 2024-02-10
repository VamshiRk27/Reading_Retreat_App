package root.Entity;

import root.Enum.Gender;

import java.sql.Date;

public class Admin extends User {
    public Admin() {
        super();
    }

    public Admin(int id, String name, String email, String mobile, Gender gender, Date dateOfBirth, String address, String city, String state, String salt, String password, String hash, String profileImage) {
        super(id, name, email, mobile, gender, dateOfBirth, address, city, state, salt, password, hash, profileImage);
    }
}
