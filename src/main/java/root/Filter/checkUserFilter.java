package root.Filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import root.DAO.CustomerDAOImpl;
import root.DB.DBConnect;

import java.io.IOException;

@MultipartConfig
public class checkUserFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        String servletPath = req.getServletPath();
//        System.out.println(servletPath);
        try {
            CustomerDAOImpl dao = new CustomerDAOImpl(DBConnect.getConnection());
            boolean exist;
            if (servletPath.equals("/registration")) {
//                System.out.println("Inside Registration Filter");
                exist = dao.checkExistingCustomer(req.getParameter("customerEmail"));
                if (exist == false) {
                    // We use RequestDispatcher instead of chain.doFilter; if both are used the registration will get triggered twice & throws error.
                    req.getRequestDispatcher("/registration").forward(request, response);
                } else {
                    res.sendRedirect("Register.jsp");
                }
            } else if (servletPath.equals("/login")) {
                exist = dao.checkExistingCustomer(req.getParameter("loginEmail"));
                if (exist) {
                    req.getRequestDispatcher("/login").forward(request, response);
                } else {
                    res.sendRedirect("Register.jsp");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
