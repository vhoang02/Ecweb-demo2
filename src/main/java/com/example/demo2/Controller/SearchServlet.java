package com.example.demo2.Controller;

import com.example.demo2.Entity.Category;
import com.example.demo2.Entity.Product;
import com.example.demo2.dao.DAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchServlet", value = "/search")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String txtSearch = request.getParameter("txt");
        DAO dao = new DAO();
        List<Product> list = dao.searchByName(txtSearch);
        request.setAttribute("ListP", list);
        List<Category> listCC = dao.getAllCategory();
        request.setAttribute("listC", listCC);
        request.getRequestDispatcher("/views/user/Shop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
