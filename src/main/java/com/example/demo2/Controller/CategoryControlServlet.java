package com.example.demo2.Controller;

import com.example.demo2.Entity.Category;
import com.example.demo2.Entity.Product;
import com.example.demo2.dao.DAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryControlServlet", value = "/category")
public class CategoryControlServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAO dao = new DAO();
        String CatID = request.getParameter("CatID");
        List<Product> list = dao.getAllProductByCid(CatID);
        request.setAttribute("listP", list);
        List<Category> listCC = dao.getAllCategory();
        request.setAttribute("listC", listCC);
        request.getRequestDispatcher("/views/user/Shop.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
