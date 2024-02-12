package root.Helper;

import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServletRequest;
import root.Entity.Customer;
import root.Enum.Gender;
import root.Enum.Membership;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Random;

@MultipartConfig
public class CustomerHelper {
    public static Customer getCustomerFromRequest(HttpServletRequest req) {
        Customer customer = new Customer();
        try {
            customer.setName(req.getParameter("customerName"));
            customer.setEmail(req.getParameter("customerEmail"));
            customer.setPassword(req.getParameter("customerPassword"));
            customer.setMobile(req.getParameter("customerMobile"));
            customer.setGender(Gender.valueOf(req.getParameter("customerGender")));
            customer.setDateOfBirth(getSQLDateFromInput(req.getParameter("customerDOB")));
            customer.setProfileImage(req.getParameter("customerEmail"));
            customer.setState(req.getParameter("customerState"));
            customer.setCity(req.getParameter("customerCity"));
            customer.setAddress(req.getParameter("customerAddress"));
            customer.setSalt(generateSalt());
            customer.setRentals(0);
            customer.setMembership(Membership.BRONZE);
            customer.setRentalsLimit(setMembershipRentals(Membership.BRONZE));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return customer;
    }

    public static void setStatementFromCustomer(PreparedStatement statement, Customer customer) {
        try {
            statement.setString(1, customer.getName());
            statement.setString(2, customer.getEmail());
            statement.setString(3, customer.getMobile());
            statement.setString(4, String.valueOf(customer.getGender()));
            statement.setDate(5, customer.getDateOfBirth());
            statement.setString(6, customer.getAddress());
            statement.setString(7, customer.getCity());
            statement.setString(8, customer.getState());
            statement.setString(9, customer.getProfileImage());
            statement.setString(10, customer.getSalt());
            statement.setString(11, customer.getPassword());
            statement.setString(12, customer.getHash());
            statement.setString(13, String.valueOf(customer.getMembership()));
            statement.setInt(14, customer.getRentals());
            statement.setInt(15, customer.getRentalsLimit());
            statement.setDate(16, new Date(System.currentTimeMillis()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Customer getCustomerFromResultSet(ResultSet rs) {
        Customer customer = null;
        try {
            customer = new Customer();
            customer.setId(rs.getInt(1));
            customer.setName(rs.getString(2));
            customer.setEmail(rs.getString(3));
            customer.setMobile(rs.getString(4));
            customer.setGender(Gender.valueOf(rs.getString(5)));
            customer.setDateOfBirth(rs.getDate(6));
            customer.setAddress(rs.getString(7));
            customer.setCity(rs.getString(8));
            customer.setState(rs.getString(9));
            customer.setProfileImage(rs.getString(10));
            customer.setSalt(rs.getString(11));
            customer.setPassword(rs.getString(12));
            customer.setHash(rs.getString(13));
            customer.setMembership(Membership.valueOf(rs.getString(14)));
            customer.setRentals(rs.getInt(15));
            customer.setRentalsLimit(rs.getInt(16));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return customer;
    }

    public static String generateSalt() {
        int leftLimit = 97; // letter 'a'
        int rightLimit = 122; // letter 'z'
        int targetStringLength = 6;
        Random random = new Random();
        StringBuilder buffer = new StringBuilder(targetStringLength);
        for (int i = 0; i < targetStringLength; i++) {
            int randomLimitedInt = leftLimit + (int)
                    (random.nextFloat() * (rightLimit - leftLimit + 1));
            buffer.append((char) randomLimitedInt);
        }
        String salt = buffer.toString();

        return salt;
    }

    public static int setMembershipRentals(Membership membership) {
        if (membership == Membership.BRONZE) {
            return 3;
        } else if (membership == Membership.SILVER) {
            return 5;
        } else if (membership == Membership.GOLD) {
            return 5;
        } else if (membership == Membership.PLATINUM) {
            return 10;
        }
        return 3;
    }

    public static Date getSQLDateFromInput(String date) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date sqlDate = null;
        try {
            java.util.Date parsed = format.parse(date);
            sqlDate = new Date(parsed.getTime());
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
        return sqlDate;
    }
}
