package root.Service.Customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import root.DAO.CustomerDAOImpl;
import root.DB.DBConnect;
import root.Entity.Customer;
import root.Helper.CustomerHelper;
import root.Helper.HashPassword;

import java.io.File;
import java.io.IOException;

@WebServlet("/registration")
@MultipartConfig
public class RegistrationServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Part part = req.getPart("customerImage");
            String imageName = part.getSubmittedFileName();
            Customer customer = CustomerHelper.getCustomerFromRequest(req);
            customer.setHash(HashPassword.getSaltedHash(customer.getSalt(), customer.getPassword()));
            CustomerDAOImpl dao = new CustomerDAOImpl(DBConnect.getConnection());
            boolean registrationStatus = dao.registerCustomer(customer);
            if (registrationStatus) {
                String path = getServletContext().getRealPath("");
                String newPath = path + "Resources\\Images\\Customer Profile Images";
                String newName = customer.getEmail() + ".jpg";
                File oldFile = new File(newPath + "\\" + imageName);
                part.write(newPath + File.separator + imageName);
                File newFile = new File(newPath + "\\" + newName);
                oldFile.renameTo(newFile);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
