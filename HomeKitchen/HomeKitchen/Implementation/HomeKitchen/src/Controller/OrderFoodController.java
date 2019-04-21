package Controller;

import Model.Item;
import Model.Order;
import Model.Food;
import Model.User;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Mahnoor on 11/25/2017.
 */
@WebServlet("/OrderFoodController")
public class OrderFoodController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        int itemId=Integer.valueOf(request.getParameter("itemId"));
        String p=request.getParameter("itemQuantity");
        int q=Integer.valueOf(p);

        if(Item.findItemById(itemId).getCount()>=q){
        Order order=new Order();

        order.PlaceOrder(((Item)Item.findItemById(itemId)),((User)request.getSession().getAttribute("user")),q);

        request.setAttribute("Availability","Available");
        RequestDispatcher rd1 = request.getRequestDispatcher("/index.jsp");
        rd1.forward(request,response);
        }
        else {
            request.setAttribute("Availability","Not Available");
            RequestDispatcher rd1 = request.getRequestDispatcher("/index.jsp");
            rd1.forward(request,response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo()
    {
        return "Short description";
    }

}
