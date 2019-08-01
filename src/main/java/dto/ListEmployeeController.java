package dto;

import com.googlecode.objectify.ObjectifyService;
import entity.Employee;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class ListEmployeeController extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectifyService.register(Employee.class);
        List<Employee> list = ofy().load().type(Employee.class).list();
        req.setAttribute("list", list);
        req.getRequestDispatcher("/test/list.jsp").forward(req, resp);
    }
}